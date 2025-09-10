Profile: SickLeaveCarePlan
Parent: CarePlan
Id: careplan
Title: "Care Plan Profile"
Description: "Profile for documenting care plans in the healthcare system of Uzbekistan."
* ^url = "https://terminology.dhp.uz/StructureDefinition/careplan"
* ^experimental = true
* ^status = #active
* ^date = "2025-08-25"
* ^publisher = "Uzinfocom"

* category 1..1 MS
* category ^short = "Категория CarePlan"

* subject 1..1 MS
* subject only Reference(Patient or Group)
* subject ^short = "Для кого открыт ЛН"

* addresses ^slicing.discriminator.type = #value
* addresses ^slicing.discriminator.path = "concept"
* addresses ^slicing.rules = #open

* addresses contains reason 0..1 and diagnosis 0..1 MS

* addresses[reason] only CodeableReference
  * ^short = "Причина ЛН"
  * ^binding.strength = #required
  * ^binding.valueSet = "https://terminology.dhp.uz/ValueSet/sickleave-reason-vs"

* addresses[diagnosis] only CodeableReference
  * ^short = "Диагноз МКБ-10"
  * ^binding.valueSet = "http://hl7.org/fhir/sid/icd-10"

* status 1..1
  * ^short = "Статус ЛН"
  * ^binding.valueSet = "https://dhp.uz/ValueSet/sickleave-workflow-status-vs"

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains series 0..1 MS
* identifier[series].system = "http://dhp.uz/NamingSystem/sickleave" (exactly)
* identifier[series] ^short = "Бизнес идентификатор ЛН (master ID)"

* created 0..1 MS
  * ^short = "Дата открытия"

* period 0..1 MS
  * ^short = "Дата закрытия"

* contributor 0..* MS
* contributor only Reference(Practitioner or PractitionerRole or Organization or CareTeam)
* contributor ^short = "Кто предоставил ЛН (ФИО врача)"

* custodian 0..1 MS
* custodian only Reference(Practitioner or PractitionerRole or Device or Organization or CareTeam)
* custodian ^short = "Кто является назначенной ответственной стороной (ФИО зав.отделения)"

* extension contains CareForRelatedPerson named care-for 0..1

* supportingInfo 0..* MS
* supportingInfo only Reference(SickLeaveObservation)
* supportingInfo ^short = "Ссылается на Observation (листок нетрудоспособности)"


Extension: CareForRelatedPerson
Id: care-for-relatedperson
Title: "Care For Related Person Extension"
Description: "Информация о связанном лице для ухода за ребенком/членом семьи"

* value[x] only Reference(SickLeaveRelatedPerson)
* value[x] 1..1
