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

* extension contains
    name 0..1 and
    gender 0..1 and
    genderOther 0..1 and
    birthDate 0..1 MS

* extension[name].value[x] only HumanName
* extension[name] ^short = "ФИО связанного лица"
* extension[name] ^definition = "ФИО связанного лица. Только если Причина ЛН: уход за больным членом семьи, ребенок до 14 лет или ребенок-инвалид."

* extension[gender].value[x] only code
* extension[gender] ^short = "Пол связанного лица"
* extension[gender] ^binding.strength = #required
* extension[gender] ^binding.valueSet = "https://terminology.medcore.uz/ValueSet/gender"

* extension[genderOther].value[x] only Coding
* extension[genderOther] ^short = "Дифференциация административного пола 'другой'"
* extension[genderOther] ^binding.strength = #required
* extension[genderOther] ^binding.valueSet = "https://terminology.medcore.uz/ValueSet/gender-other-vs"

* extension[birthDate].value[x] only date
* extension[birthDate] ^short = "Дата рождения связанного лица"
* extension[birthDate] ^definition = "Дата рождения связанного лица. Только если Причина ЛН: уход за больным членом семьи, ребенок до 14 лет либо ребенок-инвалид."