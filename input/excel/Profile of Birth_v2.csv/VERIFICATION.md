# Birth Profile v2 - FSH Verification Status

## Executive Summary

This verification accounts for inheritance from UZ Core profiles in `/home/vadi/Programs/digital-health-ig/`.

| Category | Count |
|----------|-------|
| Critical Issues | 6 |
| Important Issues | 5 |
| Suggestions | 5 |

---

## Inheritance Reference

| Birth Profile | Parent Profile | Parent Location |
|---------------|----------------|-----------------|
| PatientBirth | UZCorePatient | digital-health-ig/input/fsh/UZCorePatient.fsh |
| RelatedPersonBirth | UZCoreRelatedPerson | digital-health-ig/input/fsh/UZCoreRelatedPerson.fsh |
| EncounterBirth | UZCoreEncounter | digital-health-ig/input/fsh/UZCoreEncounter.fsh |
| ObservationAPGAR | UZCoreObservation | digital-health-ig/input/fsh/UZCoreObservation.fsh |
| ObservationBirth | UZCoreObservation | digital-health-ig/input/fsh/UZCoreObservation.fsh |

---

## Overview Table

| CSV File | FSH File | Status | Notes |
|----------|----------|--------|-------|
| Patient.csv | Patient.fsh | ⚠️ REVIEW | Missing birth-specific elements |
| composition.csv | Composition.fsh | ⚠️ PARTIAL | Minor issues |
| DokumentReference.csv | DocumentReference.fsh | ⚠️ PARTIAL | Missing `related` element |
| Encounter Birth.csv | EncounterBirth.fsh | ⚠️ PARTIAL | Missing participant slices |
| Encounter Maternity.csv | **MISSING** | ❌ CRITICAL | No FSH file exists |
| Observation APGAR.csv | ObservationAPGAR.fsh | ⚠️ PARTIAL | Wrong status binding |
| Observation Birth .csv | ObservationBirth.fsh | ⚠️ PARTIAL | Missing lifecrit component |
| Related Person.csv | RelatedPerson.fsh | ✅ OK | Education extension added correctly |

---

## 1. Patient.fsh vs Patient.csv

**Parent:** UZCorePatient (provides: identifier slices, nationality, citizenship, gender, address, name, maritalStatus, active, birthDate)

**Status:** ⚠️ REVIEW NEEDED

### Inherited from UZCorePatient (no action needed)

| Element | Status |
|---------|--------|
| identifier (all slices) | ✅ Inherited |
| extension:nationality | ✅ Inherited |
| extension:citizenship | ✅ Inherited |
| name (HumanName ruleset) | ✅ Inherited |
| gender + gender-other | ✅ Inherited |
| address (IntAndUzAddressRules) | ✅ Inherited |
| maritalStatus | ✅ Inherited |
| active | ✅ Inherited |
| birthDate | ✅ Inherited (also MS in Birth) |

### CSV Elements NOT in UZCorePatient (should be added to PatientBirth)

| CSV Element | In FSH? | Notes |
|-------------|---------|-------|
| extension:birthTime (patient-birthTime) | ❌ NO | **MISSING** - Required for newborn birth time |
| multipleBirth[x] | ❌ NO | **MISSING** - CSV line 47-48 |
| deceased[x] | ❌ NO | **MISSING** - For stillbirths, CSV line 49-50 |
| generalPractitioner | ❌ NO | **MISSING** - Certifying doctor, CSV line 73 |
| managingOrganization | ❌ NO | **MISSING** - Birth facility, CSV line 74 |
| link | ❌ NO | **MISSING** - Link to mother's Patient, CSV lines 75-78 |

### Added in FSH but NOT in CSV (MISPLACED)

| FSH Element | Notes |
|-------------|-------|
| extension:placeOfBirthType 1..1 MS | ❌ **WRONG LOCATION** - CSV puts BirthPlace on Encounter.location, not Patient |

**Note:** The BirthPlace CodeSystem (Home/Hospital/On the Road/Other) corresponds to Form 103 field "Место рождения ребёнка (больница, дом, другое)". Per CSV, this should be on `Encounter.location` as a CodeableConcept (see Encounter Birth.csv line 27: `Reference(Location) || Codeable concept`).

### Recommendation

Add to Patient.fsh:
```fsh
* extension contains
    http://hl7.org/fhir/StructureDefinition/patient-birthTime named birthTime 0..1 MS
* multipleBirth[x] MS
* deceased[x] MS
* generalPractitioner MS
* generalPractitioner only Reference(PractitionerRole)
* managingOrganization MS
* link MS
```

---

## 2. Composition.fsh vs composition.csv

**Parent:** Composition (base FHIR)

**Status:** ⚠️ PARTIAL - Minor issues

### Issues

| Issue | CSV | FSH | Severity |
|-------|-----|-----|----------|
| Typo in Title | - | "Bith Composition" | Suggestion |
| Typo in Description | - | "foor Birth" | Suggestion |
| subject cardinality | 0..* | not constrained | Minor |

### Correctly Implemented

All major elements present: identifier, status, type, date, title, subject, author, custodian, section

---

## 3. DocumentReference.fsh vs DokumentReference.csv

**Parent:** DocumentReference (base FHIR)

**Status:** ⚠️ PARTIAL

### Missing Elements

| CSV Element | Type | Notes |
|-------------|------|-------|
| related | Reference(Encounter) | **MISSING** - For mother's encounter reference |

### Correctly Implemented

Most elements present: identifier, status, docStatus, subject, context, practiceSetting, period, date, author, attester, custodian, relatesTo, description, content.profile

---

## 4. EncounterBirth.fsh vs Encounter Birth.csv

**Parent:** UZCoreEncounter (provides: status, class, priority, type, serviceType, subject, participant, location, diagnosis, etc.)

**Status:** ⚠️ PARTIAL - Missing slices

### Inherited from UZCoreEncounter (no action needed)

| Element | Status |
|---------|--------|
| status, class, priority, type | ✅ Inherited |
| serviceType | ✅ Inherited |
| subject | ✅ Inherited (constrained to PatientBirth) |
| participant (generic) | ✅ Inherited |
| location | ✅ Inherited |
| diagnosis | ✅ Inherited |
| actualPeriod, plannedStartDate, plannedEndDate | ✅ Inherited |

### Missing Elements (CRITICAL)

| CSV Element | Fixed Value | Notes |
|-------------|-------------|-------|
| participant:attendant slice | LOINC 87286-1 | **MISSING** - Birth attendant |
| participant:certifier slice | LOINC 87287-9 | **MISSING** - Birth certifier |
| location with BirthPlace binding | CodeableConcept | **MISSING** - CSV line 27 shows `Reference(Location) \|\| Codeable concept` with BirthPlace codes |

### Recommendation

Add participant slicing:
```fsh
* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant contains attendant 0..* MS and certifier 0..* MS

* participant[attendant].type = http://loinc.org#87286-1 "Birth attendant"
* participant[attendant].actor only Reference(Practitioner)

* participant[certifier].type = http://loinc.org#87287-9 "Birth certifier"
* participant[certifier].actor only Reference(Practitioner)
```

### Added in FSH but Inherited from Parent

| FSH Element | Notes |
|-------------|-------|
| diagnosis, diagnosis.condition | Already in UZCoreEncounter - can remove explicit constraints |

---

## 5. Encounter Maternity - MISSING

**Status:** ❌ CRITICAL - No FSH file exists

### Required New File: EncounterMaternity.fsh

| CSV Element | Type | Notes |
|-------------|------|-------|
| identifier | 0..* Identifier | - |
| serviceType | 0..* CodeableReference | Codes 263, 257 |
| class | 1..1 Coding | encounter-class binding |
| subject | 0..1 Reference(Patient) | Mother (not child) |
| serviceProvider | 0..1 Reference(Organization) | - |
| participant | 0..* BackboneElement | - |
| actualPeriod | 0..1 Period | - |
| plannedStartDate | 0..1 dateTime | - |
| plannedEndDate | 0..1 dateTime | - |
| location | 0..* Reference(Location) | Delivery location |

---

## 6. ObservationAPGAR.fsh vs Observation APGAR.csv

**Parent:** UZCoreObservation (provides: identifier, status, category, code, subject, effective[x], performer, value[x], component)

**Status:** ⚠️ PARTIAL

### Inherited from UZCoreObservation (no action needed)

Most observation elements are inherited correctly.

### Issues

| Issue | CSV | FSH | Severity |
|-------|-----|-----|----------|
| status binding | Fixed: preliminary/final | DocRefComStatusVS | **IMPORTANT** - Wrong VS |
| code binding | Fixed: 9272-6, 9274-2 | entire LOINC | **IMPORTANT** - Too broad |
| category cardinality | 1..* | not constrained | Minor |

### Recommendation

Fix bindings:
```fsh
* status from http://hl7.org/fhir/ValueSet/observation-status (required)
* code from LOINCVS (required)  // Use the local LOINC VS with specific codes
```

---

## 7. ObservationBirth.fsh vs Observation Birth .csv

**Parent:** UZCoreObservation

**Status:** ⚠️ PARTIAL - Missing component structure

### Issues

| Issue | CSV | FSH | Severity |
|-------|-----|-----|----------|
| status binding | Fixed: final | DocRefComStatusVS | **IMPORTANT** - Wrong VS |
| Missing lifecrit component | CSV lines 23-25 | Not in FSH | **IMPORTANT** |

### Missing Elements

| CSV Element | Type | Notes |
|-------------|------|-------|
| component (for lifecrit) | BackboneElement | Life criteria: breathing, heartbeat, etc. |
| component.code | CodeableConcept | Binding to lifecrit CodeSystem |
| component.valueBoolean | boolean | Yes/No for each criterion |

### Recommendation

Add component structure or create separate profile for life criteria observations.

---

## 8. RelatedPerson.fsh vs Related Person.csv

**Parent:** UZCoreRelatedPerson (provides: identifier slices, patient, relationship, telecom, gender, address, name, active, birthDate)

**Status:** ✅ OK

### Inherited from UZCoreRelatedPerson (no action needed)

| Element | Status |
|---------|--------|
| identifier (all slices) | ✅ Inherited |
| patient | ✅ Inherited |
| relationship | ✅ Inherited |
| name (HumanName) | ✅ Inherited |
| telecom | ✅ Inherited |
| gender | ✅ Inherited |
| address | ✅ Inherited |
| active | ✅ Inherited |
| birthDate | ✅ Inherited |

### Birth-Specific Addition

| CSV Element | In FSH? | Notes |
|-------------|---------|-------|
| extension:education | ✅ YES | Correctly added as 1..1 MS |

---

## 9. Terminology Verification

### Missing CodeSystems/ValueSets

| CSV File | FSH Status | Priority |
|----------|------------|----------|
| CodesystemObservation -lifecrit.csv | ❌ MISSING | Critical |
| CodeSystemDoc-typecodes.csv | ❌ MISSING | Important |

### Display/Translation Issues

| CodeSystem | Issue | CSV Value | FSH Value |
|------------|-------|-----------|-----------|
| BirthPlaceCS | Display mismatch | "Uy" | "Uyda" |
| DocRefComStatusCS | Translation | "Tuzatilgan" | "Oʻzgartirilgan" |

### Wrong Bindings in Profiles

| Profile | Element | Should Be | Currently Is |
|---------|---------|-----------|--------------|
| ObservationAPGAR | status | observation-status | DocRefComStatusVS (composition-status) |
| ObservationBirth | status | observation-status | DocRefComStatusVS (composition-status) |

---

## Action Items

### Critical (Must Fix)

1. [ ] Create `EncounterMaternity.fsh` profile
2. [ ] Create `LifeCriteriaCS.fsh` CodeSystem (birth004-0001 to birth004-0004)
3. [ ] Add participant slices to `EncounterBirth.fsh` (attendant/certifier with LOINC codes)
4. [ ] Fix observation status bindings (use observation-status, not composition-status)
5. [ ] Add `related` element to `DocumentReference.fsh`
6. [ ] Move BirthPlace binding from Patient extension to EncounterBirth.location

### Important

7. [ ] Add birthTime extension to `Patient.fsh`
8. [ ] Add multipleBirth[x], deceased[x] to `Patient.fsh`
9. [ ] Add generalPractitioner, managingOrganization, link to `Patient.fsh`
10. [ ] Add lifecrit component structure to `ObservationBirth.fsh`
11. [ ] Constrain APGAR code to specific LOINC codes (9272-6, 9274-2)

### Suggestions

12. [ ] Fix typos in `Composition.fsh` ("Bith" → "Birth", "foor" → "for")
13. [ ] Fix `BirthPlaceCS.fsh` display: "Uy" not "Uyda"
14. [ ] Fix `DocRefComStatusCS.fsh` translation for "corrected"
15. [ ] Remove redundant diagnosis constraints from EncounterBirth (inherited)
16. [ ] Create DocTypeCodes CodeSystem if needed

---

*Last updated: 2026-01-08*
*Verified by: Claude Code*
*Accounting for inheritance from UZ Core profiles*
