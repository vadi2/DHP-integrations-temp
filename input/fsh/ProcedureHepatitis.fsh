Profile: ProcedureHepatitis
Parent: Procedure
Id: procedure-hepatitis
Title: "Procedure (Hepatitis)"
Description: "Используется для описания медицинских процедур, проводимых над пациентом, диагностических процедур."
* ^version = "5.0.0"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Идентификатор"

* code MS
* code ^short = "Код заболевания"
* code from http://hl7.org/fhir/ValueSet/icd-10 (required)

* subject MS
* subject only Reference(Patient)
* subject ^short = "Диагностированный пациент."

* location MS
* location only Reference(Location)
* location ^short = "Место лечения."

* occurrence[x] MS
* occurrence[x] ^short = "Дата или время лечения"

* reason MS
* reason ^short = "Состояние или диагноз, который привел к лечению."
* reason from https://terminology.medcore.uz/ValueSet/hepat_interpretation (preferred)
* reason only CodeableReference(Condition)

* performer MS
* performer.actor only Reference(Practitioner)
* performer ^short = "Врач, подтвердивший диагноз."

* report MS
* report only Reference(DiagnosticReport)
* report ^short = "Результаты анализа."
