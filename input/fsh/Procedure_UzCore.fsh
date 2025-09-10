Profile: Procedure_UzCore
Parent: Procedure
Id: procedure-uz-core
Title: "Procedure (Hepatitis)"
Description: "Используется для описания медицинских процедур, проводимых над пациентом, диагностических процедур."
* ^version = "5.0.0"
* ^experimental = true
* ^status = #active
* ^date = "2025-08-25"
* ^publisher = "Uzinfocom"

// Identifikator
* identifier MS
* identifier ^short = "Идентификатор"

// Код (ICD-10)
* code MS
* code ^short = "Код заболевания"
* code from https://terminology.medcore.uz/ValueSet/ICD-10 (required)

// Пациент
* subject MS
* subject only Reference(Patient)
* subject ^short = "Диагностированный пациент."

// Локация
* location MS
* location only Reference(Location)
* location ^short = "Место лечения."

// Время проведения
* occurrence[x] MS
* occurrence[x] ^short = "Дата или время лечения."

// Причина
* reason MS
* reason ^short = "Состояние или диагноз, приведшее к лечению."
* reason from https://terminology.medcore.uz/ValueSet/The (required)

// Исполнитель
* performer MS
* performer ^short = "Врач, подтвердивший диагноз."

// Отчет
* report MS
* report only Reference(DiagnosticReport)
* report ^short = "Результаты анализа."
