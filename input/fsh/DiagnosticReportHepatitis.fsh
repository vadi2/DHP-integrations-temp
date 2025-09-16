Profile: DiagnosticReportHepatitis
Parent: DiagnosticReport
Id: diagnosticreport-hepatitis
Title: "DiagnosticReport (Hepatitis)"
Description: "Используется для хранения информации о результатах лабораторных исследований, медицинских изображений (УЗИ, МРТ) или патологических исследований."

* identifier MS
* identifier ^short = "Идентификатор"

* category MS
* category only CodeableConcept
* category from https://terminology.medcore.uz/ValueSet/Research-category (required)
* category ^short = "Название назначенного лекарства."

* code MS
* code from https://terminology.medcore.uz/ValueSet/The-name-of-the-research (required)
* code ^short = "Название теста (ПЦР, ИФА, УЗИ и т.д.)."

* subject MS
* subject only Reference(Patient)
* subject ^short = "Проверено пациентом."

* performer MS
* performer only Reference(Practitioner or Organization)
* performer ^short = "Врач или лаборатория, проводившие тест."

* effective[x] MS
* effective[x] only dateTime or Period
* effective[x] ^short = "Время теста."

* issued MS
* issued ^short = "Время публикации результатов."

* result MS
* result only Reference(Observation)
* result ^short = "Результат (связанный с наблюдением)."

* conclusion MS
* conclusion only string
* conclusion ^short = "Заключение врача."

* conclusionCode MS
* conclusionCode only CodeableConcept
* conclusionCode ^short = "Код заключения."

* presentedForm MS
* presentedForm only Attachment
* presentedForm ^short = "Файл с результатами (PDF, изображение)."
