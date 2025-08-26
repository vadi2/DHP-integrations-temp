// Profile: Procedure_UzCore
// Parent: Procedure
// Id: procedure-uz-core
// Title: "Procedure (uz-core) Hepatitis"
// Description: "Используется для описания медицинских процедур, проводимых над пациентом, диагностических процедур."
// * ^version = "5.0.0"
// * ^experimental = true
// * ^status = #active
// * ^date = "2025-08-25"
// * ^publisher = "Uzinfocom"

// * identifier MS
// * identifier ^short = "Идентификатор"

// * code MS
// * code ^short = "Код заболевания"
// * code from https://terminology.medcore.uz/ValueSet/ICD-10 (required)

// * subject MS
// * subject only Reference(Patient)
// * subject ^short = "Диагностированный пациент."

// * location MS
// * location only Reference(Location)
// * location ^short = "Место лечения."

// // * performed 0..* MS
// // * performed ^short = "Дата или время лечения."

// // * reasonCode only CodeableConcept
// // * reasonCode ^short = "Состояние, которое привело к лечению."
// // * reasonCode from https://terminology.medcore.uz/ValueSet/The (required)

// // * reasonReference only Reference(Condition)
// // * reasonReference ^short = "Диагноз, ведущий к лечению."

// * performer MS
// * performer ^short = "Врач, подтвердивший диагноз."

// * report MS
// * report only Reference(DiagnosticReport)
// * report ^short = "Результаты анализа."