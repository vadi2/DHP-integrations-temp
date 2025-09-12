Profile: ObservationUzCore
Parent: Observation
Id: observation-uz-core
Title: "Observation (Hepatitis)"
Description: "Для получения лабораторных результатов используются ПЦР, экспресс-тест, ИФА-тест, а для визуализационной диагностики — УЗИ."
* ^version = "5.0.0"
* ^experimental = true
* ^status = #active
* ^date = "2025-08-25"
* ^publisher = "Uzinfocom"

* identifier 1..* MS
* identifier ^short = "Идентификатор"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Определяет Прием, на котором был создан план лечения"

* effective[x] MS
* effective[x] only dateTime or Period
* effective[x] ^short = "Время наблюдения"


* value[x] MS
* value[x] only Attachment
* value[x] ^short = "Файл или изображение, прикреплённое к наблюдению"

* performer MS
* performer only Reference(Practitioner or Organization)
* performer ^short = "Определяет исполнителя (врач или организация)"

* interpretation MS
* interpretation only CodeableConcept
* interpretation from https://terminology.medcore.uz/ValueSet/TheNameOfTheResearch (required)
* interpretation ^short = "Клиническое значение результата теста."

// I cant add serviceProvider to Observation !!!