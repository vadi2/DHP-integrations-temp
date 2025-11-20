Profile: DHPSickLeaveCarePlan
Parent: CarePlan
Id: dhp-sick-leave-careplan
Title: "DHP Sick Leave CarePlan"
Description: "Profile for documenting sick leave status in the healthcare system of Uzbekistan for legal purposes. This CarePlan is not intended for clinical management but serves to formalize the process of managing sick leave for patients, ensuring compliance with national regulations and facilitating communication between healthcare providers, employers, and relevant authorities."
* ^experimental = true
* ^status = #draft

* category MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category contains sickLeave 1..1 MS
* category[sickLeave] = SickLeaveCategoryCS#mserv-0005-00001
* category[sickLeave] ^short = "Specifies that the CarePlan is for managing sick leave status"

* subject MS
* subject only Reference(UZCorePatient)
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

Mapping: dmed
Source: DHPSickLeaveCarePlan
Target: "http://dhp.uz/fhir/dmed"
Id: dhp-sick-leave-to-dmed
Title: "Mapping to DMED"
Description: "Mapping from DHP Sick Leave CarePlan profile to (DMED)[https://uzinfocom.uz/en/projects/dmed-en-18] source elements"
* subject -> "Пациент (Patient)"
* addresses[reason] -> "Причина ЛН (Reason for sick leave)"
* status -> "Статус (Status)"
* extension[statusHistory] -> "История статуса (Status history)"
* extension[statusHistory].extension[status] -> "Исторический статус (Historical status)"
* extension[statusHistory].extension[period] -> "Период когда статус был активен (Period when status was active)"
* identifier[series] -> "Номер ЛН (Sick leave number / master ID)"
* addresses[diagnosis] -> "Диагноз МКБ-10 (ICD-10 diagnosis)"
* created -> "Дата открытия (Opening date)"
* period -> "Дата закрытия (Closing date)"
* contributor -> "ФИО врача (Doctor's full name)"
* custodian -> "ФИО зав.отделением (Head of department's full name)"
