Profile: Condition_UzCore
Parent: Condition
Id: condition-uz-core
Title: "Condition (uz-core) Hepatitis"
Description: "Представляет собой информацию о диагнозе, симптомах или истории болезни пациента."
* ^version = "5.0.0"
* ^experimental = true
* ^status = #active
* ^date = "2025-08-25"
* ^publisher = "Uzinfocom"

* identifier 1..* MS
* identifier ^short = "Идентификатор"

* code MS
* code ^short = "Код заболевания"
* code from https://terminology.medcore.uz/ValueSet/ICD-10 (required)

* subject MS
* subject only Reference(Patient)
* subject ^short = "Диагностированный пациент."

* encounter MS
* encounter only Reference(Encounter)
* encounter ^short = "Диагноз прием."

* recordedDate MS
* recordedDate only dateTime
* recordedDate ^short = "Дата постановки диагноза."

* participant MS
* participant.actor only Reference(Practitioner)
* participant ^short = "Врач, подтвердивший диагноз."