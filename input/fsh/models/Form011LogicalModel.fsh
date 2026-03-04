Logical: UZForm011
Id: uz-form-011
Title: "UZ Form 011 - Hemodialysis Session Record"
Description: "Logical model representing the structure of Uzbekistan Form 011 (Hemodialysis Session Record)"
* ^status = #active

// Patient identification
* bemor 1..1 string "Bemor / Пациент" "Patient's full name"
* ambRaqam 1..1 string "Amb № / Амбулаторный №" "Patient's ambulatory card number"

// Session metadata
* sana 1..1 date "Sana / Дата" "Date of the hemodialysis session"
* seansRaqam 1..1 string "Seans № / № сеанса" "Sequential session number"
* dializTuri 1..1 string "Dializ turi / Тип диализа" "Type of dialysis procedure"

// Dialysis timing
* dializBoshlanishi 1..1 time "Dializ boshlanishi / Начало диализа" "Time when dialysis started"
* dializTugashi 1..1 time "Dializ tugashi / Окончание диализа" "Time when dialysis ended"

// Vital signs
* vaqt 0..1 time "Vaqt / Время" "Time of vital signs measurement"
* aqb 0..1 string "AQB / Артериальное давление" "Blood pressure reading (e.g., 150/90)"
* ps 0..1 integer "PS / Пульс" "Pulse rate in beats per minute"
* harorat 0..1 decimal "t(°C) / Температура тела" "Body temperature in Celsius"
* spo2 0..1 integer "SPO₂ (%) / Сатурация кислорода" "Oxygen saturation percentage"

// Treatment
* asosiyDavolash 0..1 string "Asosiy Davolash / Основное лечение" "Primary medication and dosage (e.g., Heparin 2000 ED)"
* qoshimchaDavolash 0..1 string "Qo'shimcha Davolash / Дополнительное лечение" "Supplementary treatments"

// Equipment
* dializator 1..1 string "Dializator / Диализатор" "Type of dialyzer used (e.g., FX 80)"
* magistral 1..1 string "Magistral / Магистраль" "Type of bloodline (e.g., Arterial/Venous)"
* ignalar 1..1 string "Ignalar / Иглы" "Type of needles used (e.g., AVF 16G)"

// Measurements
* uf 0..1 integer "UF / Ультрафильтрация" "Ultrafiltration volume in mL"
* vaznSeansgacha 0..1 decimal "Vazn seansgacha / Масса тела до сеанса" "Patient weight before session in kg"
* vaznSeansKeyin 0..1 decimal "Vazn seansdan keyin / Масса тела после сеанса" "Patient weight after session in kg"

// Participants
* shifokor 1..1 string "Shifokor / Врач" "Attending physician's name"
* hamshira 1..1 string "Hamshira / Медсестра" "Attending nurse's name"

// Access site
* fistula 0..1 string "Fistula / Фистула" "Location of vascular access (e.g., Left AV fistula)"

Mapping: UZForm011ToFHIR
Id: uz-form-011-to-fhir
Title: "Form 011 to FHIR Resource Mapping"
Source: UZForm011
Target: "http://hl7.org/fhir"

// Patient identification
* bemor -> "Patient.name.text"
* ambRaqam -> "Patient.identifier.value"

// Session metadata
* sana -> "Encounter.actualPeriod.start.toDate()"
* seansRaqam -> "Procedure.identifier.value"
* dializTuri -> "Procedure.code"

// Dialysis timing
* dializBoshlanishi -> "Procedure.occurrencePeriod.start"
* dializTugashi -> "Procedure.occurrencePeriod.end"

// Vital signs
* vaqt -> "Observation.effectiveDateTime"
* aqb -> "Observation.where(code.coding.code='85354-9').component"
* ps -> "Observation.where(code.coding.code='8867-4').valueQuantity.value"
* harorat -> "Observation.where(code.coding.code='8310-5').valueQuantity.value"
* spo2 -> "Observation.where(code.coding.code='2708-6').valueQuantity.value"

// Treatment
* asosiyDavolash -> "MedicationAdministration.medication.concept.text"
* qoshimchaDavolash -> "MedicationAdministration.note.text"

// Equipment
* dializator -> "Procedure.used.concept.text"
* magistral -> "Procedure.used.concept.text"
* ignalar -> "Procedure.used.concept.text"

// Measurements
* uf -> "Observation.where(code.coding.code='99741-1').valueQuantity.value"
* vaznSeansgacha -> "Observation.where(code.coding.code='8347-7').valueQuantity.value"
* vaznSeansKeyin -> "Observation.where(code.coding.code='8344-4').valueQuantity.value"

// Participants
* shifokor -> "Encounter.participant.where(type.coding.code='PPRF').actor.display"
* hamshira -> "Encounter.participant.where(type.coding.code='SPRF').actor.display"

// Access site
* fistula -> "Procedure.bodySite.text"
