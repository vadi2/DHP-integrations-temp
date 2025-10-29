CodeSystem: ObservationStatusCS
Id: observation-status-cs
Title: "Birth's Observation status CodeSystem"
Description: "Observation status CodeSystem for birth profile"
* insert SupplementCodeSystemDraft(observation-status-cs, $observation-status, 5.0.0)

* #appended
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дополнено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qo‘shilgan"

* #cannot-be-obtained
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не может быть получено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Olib  bo‘lmaydi"

* #final
  * ^designation[0].language = #ru
  * ^designation[=].value = "Финал"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Final"

* #amended
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изменено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'zgartirildi"

* #corrected
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исправлено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "To'g'rilangan"

* #cancelled
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отменено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bekor qilingan"

* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введено с ошибкой"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato bilan kiritilgan"
  
* #unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma'lum"