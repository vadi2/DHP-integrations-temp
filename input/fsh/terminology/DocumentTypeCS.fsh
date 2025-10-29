CodeSystem: DocumentTypeCS
Id: document-type-cs
Title: "Document type"
Description: "Types of documents CodeSystem"
* ^url = "https://terminology.dhp.uz/fhir/core/CodeSystem/document-type-cs"
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz

* #docty001.0001 "PDF"
  * ^designation[0].language = #en
  * ^designation[=].value = "PDF"
  * ^designation[+].language = #ru
  * ^designation[=].value = "PDF-документ"

* #docty001.0002 "JPG"
  * ^designation[0].language = #en
  * ^designation[=].value = "JPG "
  * ^designation[+].language = #ru
  * ^designation[=].value = "JPG-формат"
  
* #docty001.0003 "DOCX"
  * ^designation[0].language = #en
  * ^designation[=].value = "DOCX"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ДОКСХ"

* #docty001.0004 "XMLS"
  * ^designation[0].language = #en
  * ^designation[=].value = "XMLS"
  * ^designation[+].language = #ru
  * ^designation[=].value = "XML-документы"

* #docty001.0005 "PNG"
  * ^designation[0].language = #en
  * ^designation[=].value = "PNG"
  * ^designation[+].language = #ru
  * ^designation[=].value = "png"

* #docty001.0006 "HTML"
  * ^designation[0].language = #en
  * ^designation[=].value = "HTML"
  * ^designation[+].language = #ru
  * ^designation[=].value = "HTML"

* #docty001.0007 "BASE 64"
  * ^designation[0].language = #en
  * ^designation[=].value = "BASE 64"
  * ^designation[+].language = #ru
  * ^designation[=].value = "БАЗА 64"