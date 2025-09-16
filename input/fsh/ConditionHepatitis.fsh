Profile: ConditionHepatitis
Parent: Condition
Id: condition-hepatitis
Title: "Condition (Hepatitis)"
Description: "Представляет собой информацию о диагнозе, симптомах или истории болезни пациента."
* ^version = "5.0.0"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Идентификатор"

* code MS
* code ^short = "Код заболевания"
* code from https://terminology.medcore.uz/ValueSet/ICD-10 (required)

* subject MS
* subject only Reference(Patient)
* subject ^short = "Пациент, у которого диагностировано заболевание."

* encounter MS
* encounter only Reference(Encounter)
* encounter ^short = "Диагноз прием."

* recordedDate MS
* recordedDate ^short = "Дата постановки диагноза."

* participant MS
* participant ^short = "Врач, зафиксировавший диагноз."
* participant.actor only Reference(Practitioner)


