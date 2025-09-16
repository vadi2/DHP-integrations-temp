Profile: EncounterHepatitis
Parent: Encounter
Id: encounter-hepatitis
Title: "Encounter (Hepatitis)"
Description: "Прием пациента, во время которого определяется состояние пациента и тип его лечения."
* ^version = "5.0.0"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Идентификатор"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Определяет пациента."

* basedOn MS
* basedOn only Reference(CarePlan)
* basedOn ^short = "Определяет план лечения."

* serviceProvider MS
* serviceProvider only Reference(Organization)
* serviceProvider ^short = "Определяет организацию."

* reason MS
* reason ^short = "Причина встречи."

* reason.use
* reason.use only CodeableConcept
* reason.use from https://terminology.dhp.uz/ValueSet/hepat_reason-use

* reason.value MS
* reason.value only CodeableReference(Condition or Observation or Procedure)
* reason.value from https://terminology.dhp.uz/ValueSet/hepat_reason-value

* diagnosis MS
* diagnosis ^short = "Процесс диагностики."

* diagnosis.condition MS
* diagnosis.condition only CodeableReference(Condition)

* diagnosis.use MS
* diagnosis.use only CodeableConcept

* participant MS
* participant ^short = "Список участников, вовлеченных во встречу
+ Правило: тип должен быть указан, если не указан явный субъект
+ Правило: тип не может быть указан для пациента или участника группы"

* participant.period MS
* participant.period ^short = "Период времени во время встречи, в котором участвовал участник."

// * location MS
// * location from Encounter.location
// * location ^short = "В каком месте это было сделано."

* partOf MS
* partOf only Reference(Encounter)
* partOf ^short = "Эта встреча свидетельствует о том, что она является частью другого более крупного процесса."