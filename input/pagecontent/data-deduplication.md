# Data deduplication in clinical documents

## Problem

Healthcare data is often captured redundantly across multiple interactions. Paper workflows copy information between forms. Digital systems may create duplicate records for the same clinical facts.

Consequences of duplication:
- Inconsistent data (which blood type is correct?)
- Storage waste
- Reconciliation burden
- Audit complexity

This duplicating can be especially prevalent in digital forms, journals, or blanks capture.

## Solution: atomic resources + references

FHIR resources are atomic - each resource represents a single clinical fact. Instead of duplicating data, systems should reference existing resources.

```mermaid
graph LR
    subgraph Bad["Duplication"]
        F1["Form A"] --> O1["Observation<br/>Blood Type: O"]
        F2["Form B"] --> O2["Observation<br/>Blood Type: O"]
        F3["Form C"] --> O3["Observation<br/>Blood Type: O"]
    end

    subgraph Good["References"]
        FA["Form A"] --> OX["Observation<br/>Blood Type: O"]
        FB["Form B"] --> OX
        FC["Form C"] --> OX
    end

    style O1 fill:#FFCDD2,stroke:#B71C1C
    style O2 fill:#FFCDD2,stroke:#B71C1C
    style O3 fill:#FFCDD2,stroke:#B71C1C
    style OX fill:#C8E6C9,stroke:#2E7D32
```

## Query-before-create pattern

Before creating a resource in a clinical document, query whether it already exists. Below is an example using a clinical document:

```mermaid
sequenceDiagram
    participant Client
    participant Server

    Client->>Server: GET Patient?identifier=https://dhp.uz/fhir/core/sid/pid/uz/ni|{PINFL}
    Server-->>Client: Found: Patient/123

    Client->>Server: GET Observation?patient=Patient/123&code=http://loinc.org|883-9
    Server-->>Client: Found: Observation/456 (blood type)

    Client->>Server: GET Observation?patient=Patient/123&code=http://loinc.org|10331-7
    Server-->>Client: Not found (Rh factor)

    Note over Client: Build bundle with:<br/>- New Composition<br/>- Reference to Patient/123<br/>- Reference to Observation/456<br/>- New Observation for Rh factor

    Client->>Server: POST Bundle (transaction)
    Server-->>Client: Created: Observation/789, Composition/421
```

## When to de-duplicate?

Not all resources should be deduplicated. In clinical scenarios, information may need to be explicitly re-confirmed at a point in time, even if unchanged. For example, blood pressure - monitoring trends requires recording each measurement, not referencing the first one. However, if a blood pressure was just recorded (one clinical action), it can be referenced in multiple forms; if a practitioner takes a new measurement, a new resource should be created.

## Example: clinical forms

Clinical forms often reference the same data. A pregnancy card (Form 111) captures blood type once; subsequent visits reference it.

### Workflow

```mermaid
flowchart LR
    subgraph Query["1. Query existing"]
        Q1["Patient by PINFL"]
        Q2["Blood type"]
        Q3["Rh factor"]
        Q4["Spouse"]
    end

    subgraph Build["2. Build bundle"]
        C["Composition<br/>(Form 111)"]
        New["New resources<br/>(vitals, labs)"]
        Ref["References to<br/>existing resources"]
    end

    subgraph Submit["3. Submit"]
        TX["Document bundle"]
        Server["FHIR server"]
    end

    Query --> Build
    C --> TX
    New --> TX
    Ref --> TX
    TX --> Server
```

### Document bundle structure

A document bundle can contain:
- References only - to existing server resources
- New resources - to be created (use `urn:uuid:`)

```json
{
  "resourceType": "Bundle",
  "type": "document",
  "entry": [
    {
      "fullUrl": "urn:uuid:composition-1",
      "resource": {
        "resourceType": "Composition",
        "status": "final",
        "type": {"coding": [{"code": "form-111"}]},
        "subject": {"reference": "Patient/123"},
        "section": [
          {
            "title": "Laboratory",
            "entry": [
              {"reference": "Observation/456"},
              {"reference": "Observation/789"},
              {"reference": "urn:uuid:new-hiv-test"}
            ]
          }
        ]
      }
    },
    {
      "fullUrl": "urn:uuid:new-hiv-test",
      "resource": {
        "resourceType": "Observation",
        "status": "final",
        "code": {"coding": [{"system": "http://loinc.org", "code": "56888-1"}]},
        "subject": {"reference": "Patient/123"},
        "valueCodeableConcept": {
          "coding": [{"system": "http://snomed.info/sct", "code": "260385009"}]
        }
      }
    }
  ]
}
```

In this example:
- `Patient/123` - existing, referenced only
- `Observation/456`, `Observation/789` - existing (blood type, Rh), referenced only
- `urn:uuid:new-hiv-test` - new, included in bundle
