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
* identifier ^short = "Identifier"

// Код (ICD-10)
* code MS
* code ^short = "Disease code"
* code from https://terminology.medcore.uz/ValueSet/ICD-10 (required)

// Пациент
* subject MS
* subject only Reference(Patient)
* subject ^short = "Diagnosed patient."

// Локация
* location MS
* location only Reference(Location)
* location ^short = "Place of treatment."

// Время проведения
* occurrence[x] MS
* occurrence[x] ^short = "Date or time of treatment."

// Причина
* reason MS
* reason ^short = "The condition or diagnosis that led to treatment."
* reason from https://terminology.medcore.uz/ValueSet/The (required)

// Исполнитель
* performer MS
* performer ^short = "The doctor who confirmed the diagnosis."

// Отчет
* report MS
* report only Reference(DiagnosticReport)
* report ^short = "Results of the analysis."
