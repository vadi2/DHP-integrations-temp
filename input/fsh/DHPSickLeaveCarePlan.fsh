Profile: DHPSickLeaveCarePlan
Parent: CarePlan
Id: dhp-sick-leave-careplan
Title: "DHP Sick Leave CarePlan"
Description: "Profile for documenting care plans in the healthcare system of Uzbekistan."
* ^experimental = true
* ^status = #draft

* category MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category contains sickLeave 1..* MS
* category[sickLeave] = SickLeaveCategoryCS#mserv-0005-00001
* category[sickLeave] ^short = "Category of the CarePlan"

* subject MS
* subject only Reference(UZCorePatientPatient)
* subject ^short = "For whom is the Certificate of Incapacity for Work opened"

* addresses ^slicing.discriminator.type = #value
* addresses ^slicing.discriminator.path = "concept"
* addresses ^slicing.rules = #open

* addresses contains reason 0..1 and diagnosis 0..1 MS
* extension contains CarePlanStatusHistory named statusHistory 0..*

* addresses[reason] from CarePlanReasonVS (required)
  * ^short = "Reason for the sick leave"

* addresses[diagnosis] from $icd-10-vs (required)
  * ^short = "ICD-10 diagnosis"

* status MS
  * ^short = "Status: Sick Leave"
  * ^binding.strength = #required
* status from CarePlanStatusVS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains series 0..1 MS
* identifier[series].system = "http://dhp.uz/NamingSystem/sickleave" (exactly)
* identifier[series] ^short = "Business ID Sick Leave Sheet (master ID)"

* created 0..1 MS
  * ^short = "Opening date"

* period 0..1 MS
  * ^short = "Closing date"

* contributor 0..* MS
* contributor only Reference(Practitioner or PractitionerRole or Organization or CareTeam)
* contributor ^short = "Who provided the Certificate of Incapacity for Work (full name of the doctor)"

* custodian 0..1 MS
* custodian only Reference(Practitioner or PractitionerRole or Device or Organization or CareTeam)
* custodian ^short = "Who is the designated responsible party (name of the head of the department)"

// * extension contains CareForRelatedPerson named care-for 0..1

* supportingInfo 0..* MS
* supportingInfo only Reference(DHPSickLeaveObservation)
* supportingInfo ^short = "Refers to Observation (sick leave)"

* activity MS
* activity ^short = "Activities planned as part of the sick leave care plan"

// * activity.plannedActivityReference MS
// * activity.plannedActivityReference only Reference(DHPSickLeaveActivityRequest)

