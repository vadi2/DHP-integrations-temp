Profile: DHPSickLeaveCarePlan
Parent: CarePlan
Id: dhp-sick-leave-careplan
Title: "DHP Sick Leave CarePlan"
Description: "Profile for documenting care plans in the healthcare system of Uzbekistan."
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/dhp-sick-leave-careplan"
* ^experimental = true
* ^status = #draft

* category MS
* category ^short = "Category CarePlan"

* subject MS
* subject only Reference(Patient or Group)
* subject ^short = "For whom is the Certificate of Incapacity for Work opened"

* addresses ^slicing.discriminator.type = #value
* addresses ^slicing.discriminator.path = "concept"
* addresses ^slicing.rules = #open

* addresses contains reason 0..1 and diagnosis 0..1 MS

* addresses[reason] only CodeableReference
  * ^short = "Reason: Sick leave"
  * ^binding.strength = #required
* addresses[reason] from CarePlanReasonVS

* addresses[diagnosis] only CodeableReference
  * ^short = "ICD-10 diagnosis"
  * ^binding.strength = #required
  * ^binding.valueSet = http://hl7.org/fhir/ValueSet/icd-10

* status MS
  * ^short = "Status: Sick Leave"
  * ^binding.strength = #required
* status from CarePlanStatusVS (required)

* status.extension contains UZCarePlanHomeStatusExtension named uzStatus 0..1

* identifier ^slicing.discriminator.type = #pattern
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

* extension contains CareForRelatedPerson named care-for 0..1
* extension contains CarePlanStatusHistory named statusHistory 0..*

* supportingInfo 0..* MS
* supportingInfo only Reference(DHPSickLeaveObservation)
* supportingInfo ^short = "Refers to Observation (sick leave)"

* activity MS
* activity ^short = "Activities planned as part of the sick leave care plan"

* activity.plannedActivityReference MS
* activity.plannedActivityReference only Reference(DHPSickLeaveActivityRequest)

Instance: InstanceSickLeave
InstanceOf: DHPSickLeaveCarePlan
Title: "Example - Sick Leave CarePlan"
Description: "Example CarePlan instance for sick leave case"
Usage: #example

* status = #completed
* intent = #plan
* category = https://dhp.uz/fhir/integrations/CodeSystem/sick-leave-category-cs#mserv-0005-00001 "Mehnatga layoqatsizlik varaqasi"
* subject = Reference(Patient/example)
* created = "2025-08-20"
* period.start = "2025-08-20"
* period.end = "2025-08-24"
* identifier[series].value = "01ТШ 005591125"

// Diagnoses and Reasons
* addresses[reason].concept = https://terminology.dhp.uz/CodeSystem/care-plan-reason-cs#emdoc-0001-0001 "Kasallik"

// Contributors
* contributor = Reference(Practitioner/doctor-example)
* contributor.display = "Dr. Boltayev Damir Ketmonovich"
* custodian = Reference(Practitioner/department-head-example)

// RelatedPerson Extensions
* extension[care-for].extension[name].valueHumanName.text = "Boltayev Damir Ketmonovich"
* extension[care-for].extension[gender].valueCodeableConcept = https://terminology.dhp.uz/ValueSet/gender#male "Male"
* extension[care-for].extension[birthdate].valueDate = "1950-01-01"