### Form 011 - Hemodialysis Session Protocol

This page documents the mapping between Form 011 (Hemodialysis Session Protocol) fields and FHIR resources.

### Overview

Form 011 captures clinical data from hemodialysis sessions. The form data maps to multiple FHIR resources bundled together as a FHIR Document.

### Field Mapping

| UZ-011 | RU-011 | FHIR Path | Example Value |
|--------|--------|-----------|---------------|
| Bemor | Пациент | Patient.name | Aziz John |
| Sana | Дата | Encounter.identifier | 1/6/2026 |
| Amb № | Амбулаторный № | Patient.identifier | 1245 |
| Seans № | № сеанса | Procedure.identifier | 128 |
| Dializ boshlanishi | Начало диализа | Procedure.occurrence[occurrenceDateTime] | 9:00 |
| Dializ tugashi | Окончание диализа | Procedure.occurrence[occurrenceDateTime] | 13:00 |
| Vaqt | Время | Procedure.occurrence[occurrenceTiming] | 9:00 |
| AQB | Артериальное давление | Observation.code; Observation.value[x] | 150/90 |
| PS | Пульс | Observation.code; Observation.value[x] | 0:00 |
| t(°C) | Температура тела (°C) | Observation.code; Observation.value[x] | 36.6 |
| SPO (SpO₂ (%)) | Сатурация кислорода (%) | Observation.code; Observation.value[x] | 0:00 |
| Asosiy Davolash | Основное лечение | MedicationAdministration.medicationCodeableConcept | Geparin : 2000ED |
| Qo'shimcha Davolash | Дополнительное лечение | Observation.code; Observation.value[x] | |
| Dializator | Диализатор | Procedure.used.concept | FX 80 |
| Magistral | Магистраль | Procedure.used.concept | Arterial/Venoz |
| ignalar | Иглы | Procedure.used.concept | AVF 16G |
| UF | Ультрафильтрация | Observation.code; Observation.value[x] | 2500 ml |
| Vazn seansgacha | Масса тела до сеанса | Observation.code; Observation.value[x] | 72.5 kg |
| Vazn seansdan keyin | Масса тела после сеанса | Observation.code; Observation.value[x] | 70.0 kg |
| Shifokor | Врач | Encounter.participant.actor (Practitioner) | Каримов А.А. |
| Hamshira | Медсестра | Encounter.participant.actor (Practitioner) | Рахматова М.М. |
| Fistul | Фистула | Procedure.bodySite | Левая AV-фистула |

### Resource Structure

The Form 011 document is structured as a FHIR Bundle containing:

```
Bundle (document)
├── Composition (form metadata, sections)
├── Patient (patient demographics)
├── Encounter (session encounter)
├── Procedure (hemodialysis procedure)
├── Observation[] (vital signs, measurements)
├── MedicationAdministration (medications given)
└── Practitioner[] (doctor, nurse)
```

### Example

See [Form 011 Hemodialysis Example](Bundle-example-form-011-hemodialysis.html) for a complete FHIR document example.
