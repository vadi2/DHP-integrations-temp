CodeSystem: LocalCirrhosisEtiologyCS
Id: local-cirrhosis-etiology-cs
Title: "Local extensions for cirrhosis etiology"
Description: "Locally defined sub-codes for cirrhosis etiology (not present in official ICD-10)"
* ^url = "https://terminology.dhp.uz/CodeSystem/local-cirrhosis-etiology-cs"
* ^status = #active
* ^experimental = true
* ^content = #complete
* ^language = #uz

* #K74.0.1 "HBV etiologiyasiga ega jigar sirrozi"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Цирроз HBV этиология"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cirrhosis of the liver due to hepatitis B virus (HBV) etiology"

* #K74.0.2 "HBV+HDV etiologiyasiga ega jigar sirrozi"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Цирроз HBV+HDV этиологии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cirrhosis of the liver due to HBV and HDV etiology"

* #K74.0.3 "HCV etiologiyasiga ega jigar sirrozi"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Цирроз HCV этиология"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cirrhosis of the liver due to HCV etiology"
