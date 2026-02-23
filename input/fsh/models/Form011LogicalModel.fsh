Logical: UZForm011
Id: uz-form-011
Title: "UZ Form 011 - Hemodialysis Session Record"
Description: "Logical model representing the structure of Uzbekistan Form 011 (Hemodialysis Session Record)"
* ^status = #active
* ^version = "1.0.0"

* bemor 1..1 string "Bemor / Пациент" "Patient's full name"
* ambRaqam 1..1 string "Amb № / Амбулаторный №" "Patient's ambulatory card number"
* sana 1..1 date "Sana / Дата" "Date of the hemodialysis session"
* seansRaqam 1..1 string "Seans № / № сеанса" "Sequential session number"
* dializBoshlanishi 1..1 time "Dializ boshlanishi / Начало диализа" "Time when dialysis started"
* dializTugashi 1..1 time "Dializ tugashi / Окончание диализа" "Time when dialysis ended"
* vaqt 0..1 time "Vaqt / Время" "Time of vital signs measurement"
* aqb 0..1 string "AQB / Артериальное давление" "Blood pressure reading (e.g., 150/90)"
* ps 0..1 integer "PS / Пульс" "Pulse rate in beats per minute"
* harorat 0..1 decimal "t(°C) / Температура тела" "Body temperature in Celsius"
* spo2 0..1 integer "SPO₂ (%) / Сатурация кислорода" "Oxygen saturation percentage"
* asosiyDavolash 0..1 string "Asosiy Davolash / Основное лечение" "Primary medication and dosage (e.g., Heparin: 2000ED)"
* qoshimchaDavolash 0..1 string "Qo'shimcha Davolash / Дополнительное лечение" "Supplementary treatments"
* dializator 1..1 string "Dializator / Диализатор" "Type of dialyzer used (e.g., FX 80)"
* magistral 1..1 string "Magistral / Магистраль" "Type of bloodline (e.g., Arterial/Venous)"
* ignalar 1..1 string "Ignalar / Иглы" "Type of needles used (e.g., AVF 16G)"
* uf 0..1 integer "UF / Ультрафильтрация" "Ultrafiltration volume in mL"
* vaznSeansgacha 0..1 decimal "Vazn seansgacha / Масса тела до сеанса" "Patient weight before session in kg"
* vaznSeansKeyin 0..1 decimal "Vazn seansdan keyin / Масса тела после сеанса" "Patient weight after session in kg"
* shifokor 1..1 string "Shifokor / Врач" "Attending physician's name"
* hamshira 1..1 string "Hamshira / Медсестра" "Attending nurse's name"
* fistula 0..1 string "Fistula / Фистула" "Location of vascular access (e.g., Left AV fistula)"


Mapping: Form011ToPatient
Id: form011-to-patient
Source: UZForm011
Target: "http://hl7.org/fhir/StructureDefinition/Patient"
Title: "Form 011 to Patient Resource Mapping"
* bemor -> "Patient.name.text"
* ambRaqam -> "Patient.identifier.where(system='https://dhp.uz/fhir/core/sid/pid/uz/prn').value"

Mapping: Form011ToEncounter
Id: form011-to-encounter
Source: UZForm011
Target: "http://hl7.org/fhir/StructureDefinition/Encounter"
Title: "Form 011 to Encounter Resource Mapping"
* sana -> "Encounter.actualPeriod.start.toDate()"
* shifokor -> "Encounter.participant.where(type.coding.code='PPRF').actor.display"
* hamshira -> "Encounter.participant.where(type.coding.code='SPRF').actor.display"

Mapping: Form011ToProcedure
Id: form011-to-procedure
Source: UZForm011
Target: "http://hl7.org/fhir/StructureDefinition/Procedure"
Title: "Form 011 to Procedure Resource Mapping"
* seansRaqam -> "Procedure.identifier.value"
* dializBoshlanishi -> "Procedure.occurrencePeriod.start.toTime()"
* dializTugashi -> "Procedure.occurrencePeriod.end.toTime()"
* dializator -> "Procedure.used.concept.text"
* magistral -> "Procedure.used.concept.text"
* ignalar -> "Procedure.used.concept.text"
* fistula -> "Procedure.bodySite.text"

Mapping: Form011ToObservationVitals
Id: form011-to-observation-vitals
Source: UZForm011
Target: "http://hl7.org/fhir/StructureDefinition/Observation"
Title: "Form 011 to Observation (Vital Signs) Mapping"
* vaqt -> "Observation.effectiveDateTime.toTime()"
* aqb -> "Observation.where(code.coding.code='85354-9').component"
* ps -> "Observation.where(code.coding.code='8867-4').valueQuantity.value"
* harorat -> "Observation.where(code.coding.code='8310-5').valueQuantity.value"
* spo2 -> "Observation.where(code.coding.code='2708-6').valueQuantity.value"

Mapping: Form011ToObservationDialysis
Id: form011-to-observation-dialysis
Source: UZForm011
Target: "http://hl7.org/fhir/StructureDefinition/Observation"
Title: "Form 011 to Observation (Dialysis Parameters) Mapping"
* uf -> "Observation.where(code.coding.code='99741-1').valueQuantity.value"
* vaznSeansgacha -> "Observation.where(code.coding.code='29463-7' and code.text='Pre-session weight').valueQuantity.value"
* vaznSeansKeyin -> "Observation.where(code.coding.code='29463-7' and code.text='Post-session weight').valueQuantity.value"

Mapping: Form011ToMedicationAdministration
Id: form011-to-medication-admin
Source: UZForm011
Target: "http://hl7.org/fhir/StructureDefinition/MedicationAdministration"
Title: "Form 011 to MedicationAdministration Mapping"
* asosiyDavolash -> "MedicationAdministration.medication.concept.text"
* qoshimchaDavolash -> "MedicationAdministration.note.text"
