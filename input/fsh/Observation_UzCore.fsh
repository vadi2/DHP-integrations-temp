Profile: ResearchObservation
Parent: Observation
Id: research-observation
Title: "Research Observation"
Description: "Для получения лабораторных результатов используются ПЦР, экспресс-тест, ИФА-тест, а для визуализационной диагностики — УЗИ."

* identifier 1..* MS
* identifier ^short = "Идентификатор"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Определяет Прием, на котором был создан план лечения"

* effective[x] MS
* effective[x] only dateTime or Period
* effective[x] ^short = "Время наблюдения"
  
  //valueAttechment not found in effective[x] in FHIR R4,so that i commented it

* performer MS
* performer only Reference(Practitioner)
* performer ^short = "Текст вопроса"

* category MS
* category only CodeableConcept
* category from https://terminology.medcore.uz/ValueSet/ResearchCategory (required)
* category ^short = "Категория исследования."

* interpretation MS
* interpretation only CodeableConcept
* interpretation from https://terminology.medcore.uz/ValueSet/TheNameOfTheResearch (required)
* interpretation ^short = "Клиническое значение результата теста."


// ask this from Vadim
* extension contains ObservationServiceProvider named serviceProvider 0..1
* extension[serviceProvider] ^short = "Определяет организацию"