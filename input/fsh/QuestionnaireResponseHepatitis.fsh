Profile: QuestionnaireResponseHepatitis
Parent: QuestionnaireResponse
Id: questionnaire-response-hepatitis
Title: "QuestionnaireResponse (Hepatitis)"
Description: "Структурированный набор вопросов и ответов на них."
* ^version = "5.0.0"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Идентификатор"

* questionnaire MS
* questionnaire only Canonical(Questionnaire)
* questionnaire ^short = "Название опроса"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Кому это принадлежит (пациенту)"

* encounter MS
* encounter only Reference(Encounter)
* encounter ^short = "Вопрос и ответ о визите, в рамках которого он состоялся"

* authored MS
* authored only dateTime
* authored ^short = "Когда он был заполнен"

* item MS
* item ^short = "Определяет Прием, на котором был создан план лечения"

* item.linkId 1..1
* item.linkId only string
* item.linkId ^short = "Соответствующие идентификаторы"

* item.text 1..1
* item.text only string
* item.text ^short = "Текст вопроса"

* item.answer MS
* item.answer ^short = "Ответы на вопрос"

* item.answer.value[x] 
* item.answer.value[x] only boolean or string
* item.answer.value[x] ^short = "Тип ответа (Boolean | String)"

* item.answer.item MS 
* item.answer.value[x]
* item.answer.value[x] only boolean or string
* item.answer.value[x] ^short = "Тип ответа (Boolean | String)"