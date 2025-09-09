Profile: SickLeaveObservation
Parent: Observation
Id: sick-leave-observation
Title: "Sick Leave Observation Profile"
Description: "Profile for sick leave observations with structured components"
* basedOn 1..* MS
* basedOn only Reference(SickLeaveCarePlan)
* basedOn ^short = "Reference to the associated CarePlan"

* status MS
* status = #unknown
* status ^short = "Sick leave status is tracked in the original CarePlan"

* code 1..1 MS
* code = $sct#224459001 "On sick leave from work"

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slicing for different sick leave components"
* component contains
    cityAffiliation 0..1 MS and
    placeOfIncident 0..1 MS and
    issuanceOtherCity 0..1 MS and
    infectiousContact 0..1 MS and
    kinshipDegree 0..1 MS and
    regime 0..1 MS and
    regimeViolation 0..* MS and
    jobTransfer 0..1 MS and
    conclusions 0..* MS and
    verificationDate 0..* MS

* component[cityAffiliation] ^short = "City affiliation"
* component[cityAffiliation].code = SickLeaveComponentCS#emdoc-0009-0001
* component[cityAffiliation].value[x] only CodeableConcept

* component[placeOfIncident] ^short = "Place of incident"
* component[placeOfIncident].code = SickLeaveComponentCS#emdoc-0009-0002
* component[placeOfIncident].value[x] only CodeableConcept

* component[issuanceOtherCity] ^short = "Issuance of sick leave to patient from another city"
* component[issuanceOtherCity].code = SickLeaveComponentCS#emdoc-0009-0003
* component[issuanceOtherCity].value[x] only boolean

* component[infectiousContact] ^short = "Information about contact with infectious disease patient"
* component[infectiousContact].code = SickLeaveComponentCS#emdoc-0009-0004
* component[infectiousContact].value[x] only boolean

* component[kinshipDegree] ^short = "Degree of kinship"
* component[kinshipDegree].code = SickLeaveComponentCS#emdoc-0009-0005
* component[kinshipDegree].value[x] only CodeableConcept

* component[regime] ^short = "Regime/Mode"
* component[regime].code = SickLeaveComponentCS#emdoc-0009-0006
* component[regime].value[x] only CodeableConcept

* component[regimeViolation] ^short = "Data on regime violation"
* component[regimeViolation].code = SickLeaveComponentCS#emdoc-0009-0007
* component[regimeViolation].value[x] only CodeableConcept

* component[jobTransfer] ^short = "Temporarily transfer to another job"
* component[jobTransfer].code = SickLeaveComponentCS#emdoc-0009-0008
* component[jobTransfer].value[x] only dateTime

* component[conclusions] ^short = "Conclusions"
* component[conclusions].code = SickLeaveComponentCS#emdoc-0009-0009
* component[conclusions].value[x] only CodeableConcept

* component[verificationDate] ^short = "Date of verification"
* component[verificationDate].code = SickLeaveComponentCS#emdoc-0009-0010
* component[verificationDate].value[x] only dateTime
