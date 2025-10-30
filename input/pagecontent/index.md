# DHP Integrations Implementation Guide

## Overview

This Implementation Guide defines FHIR R5-based integration specifications for third-party systems that integrate with the [Digital Health Platform (DHP)](https://dhp.uz/fhir/core/en/index.html). It is designed to enable external healthcare systems to exchange data with DHP while maintaining their own data sovereignty.

## Purpose

DHP Integrations IG provides:

- **Standard data structures** - FHIR profiles and extensions for external systems integrating with DHP
- **Terminology** - CodeSystems and ValueSets for standardized coding
- **API specifications** - Data exchange patterns between external systems and DHP
- **Integration patterns** - Support for DHP's hybrid architecture
- **Conformance requirements** - Requirements for third-party system integrations

This IG is intended for implementers developing or configuring systems that need to integrate with DHP. Example systems include Medical Information Systems (MIS), Picture Archiving and Communication Systems (PACS), Laboratory Information Systems (LIS), as well as any other third-party healthcare applications that need to exchange data with DHP.

While external systems may develop their own FHIR Implementation Guides, this IG may include profiles developed collaboratively with external system vendors to streamline the integration process and reduce implementation overhead.

## Integration approach - hybrid model

DHP uses a hybrid integration approach where not all data is centralized. Instead, the platform combines centralized storage of core healthcare data with distributed, specialized data maintained by external systems.

```mermaid
graph LR
    CoreData["DHP Core Data<br/>Demographics<br/>Clinical Records<br/>Referrals<br/>Lab Results<br/>Registries"]

    MIS["MIS<br/>Patient Records<br/>Appointments<br/>Billing"]
    PACS["PACS<br/>Medical Images<br/>Imaging Studies"]
    LIS["LIS<br/>Lab Workflows<br/>Specimen Tracking"]
    Other["Other 3rd-Party Systems<br/>Specialized Data<br/>& Services"]

    LIS -->|"transmits<br/>results"| CoreData
    CoreData -->|"lab orders"| LIS
    CoreData <-->|"query &<br/>update"| MIS
    CoreData <-->|"DICOM:<br/>references &<br/>retrieves images"| PACS
    CoreData <-->|"FHIR API<br/>integration"| Other

    style CoreData fill:#4A90E2,stroke:#2E5C8A,stroke-width:3px,color:#fff
    style MIS fill:#F5A623,stroke:#D68910,stroke-width:2px,color:#000
    style PACS fill:#F5A623,stroke:#D68910,stroke-width:2px,color:#000
    style LIS fill:#F5A623,stroke:#D68910,stroke-width:2px,color:#000
    style Other fill:#9B59B6,stroke:#7D3C98,stroke-width:2px,color:#fff
```

### Data stored in DHP

DHP centrally stores and manages core healthcare data:

- **Patient demographics and master data** - Master patient index and demographic information
- **Core clinical records (EHRs)** - Essential electronic health record data
- **Referrals and prescriptions** - Clinical orders and referral documentation
- **Laboratory results** - Lab results and diagnostic reports transmitted from LIS systems
- **Master registries** - Patient registry, provider directory, organization registry, and terminology services

### Data maintained by external systems

External systems maintain their own operational data while integrating via FHIR APIs. Examples include:

- **MIS systems** - Patient records, appointments, billing data, and facility-specific workflows
- **PACS systems** - Medical images and diagnostic imaging studies (DHP supports DICOM-based image exchange, storing references to images in PACS and retrieving images for authorized users)
- **LIS systems** - Laboratory workflows, specimen tracking, and detailed test processing data
- **Other 3rd-party systems** - Any healthcare application with specialized data or services that need to integrate with DHP

### Integration pattern

For most external system data, DHP can store references to data in external systems rather than duplicating everything. However, certain critical data like laboratory results are transmitted to and stored in DHP. This hybrid approach:

- Maintains data ownership with the originating system
- Enables real-time access to source data through API integration
- Preserves system-specific workflows and business logic
- Simplifies compliance with data governance requirements

DHP and external systems maintain complementary data sets and interact through FHIR and custom APIs: DHP provides authoritative master data and core clinical records, while external systems provide specialized operational data and domain-specific capabilities.

---

{% lang-fragment dependency-table.xhtml %}

{% lang-fragment ip-statements.xhtml %}

{% lang-fragment globals-table.xhtml %}

