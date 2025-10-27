CodeSystem: EducationCS
Id: education-cs
Title: "Education CodeSystem"
Description: "Academic degrees of citizens residing in the Republic of Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/CodeSystem/education-cs"
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz

* #regis0005.00001 "Uyushmagan (0-3 yosh)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Unorganized (0-3 years)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неорганизованное (0-3 лет)"

* #regis0005.00002 "Maktabgacha (3-7 yosh)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Preschool (3-7 years)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дошкольное (3-7 лет)"

* #regis0005.00003 "Ikkilamchi tugallanmagan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Incomplete secondary"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Среднее незаконченное"

* #regis0005.00004 "O'rtacha"
  * ^designation[0].language = #en
  * ^designation[=].value = "Secondary"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Среднее"

* #regis0005.00005 "Aqli zaiflar uchun maktab"
  * ^designation[0].language = #en
  * ^designation[=].value = "School for the mentally retarded"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Школа для умственно отсталых"

* #regis0005.00006 "Oʻrta maxsus taʼlim"
  * ^designation[0].language = #en
  * ^designation[=].value = "Secondary special education"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Среднее специальное образование"

* #regis0005.00007 "Tugallanmagan oliy ta'lim"
  * ^designation[0].language = #en
  * ^designation[=].value = "Incomplete higher"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Незаконченное высшее"

* #regis0005.00008 "Oliy ma'lumot"
  * ^designation[0].language = #en
  * ^designation[=].value = "Higher education"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Высшее образование"

* #regis0005.00009 "O'qimagan (ijtimoiy/tibbiy sabab)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Did not study (social/medical reason)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не учился (социальная\медицинская причина)"
  
* #regis0005.00010 "Boshqa"
  * ^designation[0].language = #en
  * ^designation[=].value = "Other"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое"