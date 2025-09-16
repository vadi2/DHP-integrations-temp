Profile: QuestionnaireHepatitis
Parent: Questionnaire
Id: questionnaire-hepatitis
Title: "Questionnaire (Hepatitis)"
Description: "Структурированный набор вопросов."
* ^version = "5.0.0"
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Идентификатор."

* title MS
* title only string
* title ^short = "Название опроса."

* item MS
* item ^short = "Определяет Прием, на котором был создан план лечения"

* item.linkId
* item.linkId only string
* item.linkId ^short = "Соответствующие идентификаторы"

* item.text
* item.text only string
* item.text ^short = "Текст вопроса"

* item.type MS
* item.type only code
* item.type ^short = "string, choice, boolean, date, integer…"