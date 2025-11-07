Profile: ObservationBirth
Parent: UZCoreObservation
Id: observation-birth
Title: "Observation of Birth"
Description: "Assessment of the newborn's condition"
* ^status = #draft

* identifier MS
* identifier ^short = "Идентификатор для наблюдения"

* status MS
* status ^short = "зарегистрированный | образец в процессе обработки | предварительный | окончательный | измененный | исправленный | добавленный | аннулированный | введенный по ошибке | неизвестный | не может быть получен"
* status from DocRefComStatusVS (required)

* category MS
* category ^short = "Классификация видов наблюдения"
* category from https://terminology.dhp.uz/fhir/core/ValueSet/observation-category-vs  (required)

* code MS
* code ^short = "Тип наблюдения (код/тип)"
* code from http://loinc.org (required)

* subject MS
* subject ^short = "о пациенте (ребенок)"
* subject only Reference(PatientBirth)

* effective[x] MS
* effective[x] ^short = "Клинически значимое время/период наблюдения"

* performer MS
* performer ^short = "Врач или специалист, измеривший результат"
* performer only Reference(UZCorePractitioner)
