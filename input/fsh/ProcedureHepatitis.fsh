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
* code from CodeFor_ICD10VS (required)

* subject MS
* subject only Reference(Patient)
* subject ^short = "Диагностированный пациент."

* location MS
* location only Reference(Location)
* location ^short = "Место лечения."

* reason MS
* reason ^short = "Причина выполнения процедуры."
* reason only CodeableReference(Condition)

* performer MS
* performer.actor only Reference(Practitioner)
* performer ^short = "Врач, подтвердивший диагноз."

* report MS
* report only Reference(DiagnosticReport)
* report ^short = "Результаты анализа."
