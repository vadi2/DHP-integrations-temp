Profile: ObservationHepatitis
Parent: Observation
Id: observation-hepatitis
Title: "Observation (Hepatitis)"
Description: "Для получения лабораторных результатов используются ПЦР, экспресс-тест, ИФА-тест, а для визуализационной диагностики — УЗИ."
* ^version = "5.0.0"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Идентификатор"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Определяет Прием, на котором был создан план лечения"

* effective[x] MS
* effective[x] only dateTime or Period
* effective[x] ^short = "Время наблюдения"

* value[x] MS
* value[x] only Attachment
* value[x] ^short = "Прикрепить файл"

* performer MS
* performer only Reference(Practitioner)
* performer ^short = "Текст вопроса"

* category MS
* category only CodeableConcept
* category ^short = "Категория наблюдения"
* category from https://terminology.dhp.uz/ValueSet/hepat_category

* interpretation MS
* interpretation only CodeableConcept
* interpretation from https://terminology.medcore.uz/ValueSet/hepat_interpretation
* interpretation ^short = "Клиническое значение результата теста."

* extension contains ObservationServiceProvider named serviceProvider 1..1 MS
* extension[serviceProvider] ^short = "Определяет организацию."
