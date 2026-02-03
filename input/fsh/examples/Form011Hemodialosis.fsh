Instance: example-form-011-hemodialysis
InstanceOf: Bundle
Usage: #example
Title: "Forma 011 - Gemodializ seansi"
Description: "Gemodializ seansi yozuvi namunasi"
* language = #uz
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:550e8400-e29b-41d4-a716-446655440000"
* type = #document
* timestamp = "2026-01-06T13:30:00+05:00"
* entry[0].fullUrl = "urn:uuid:composition-001"
* entry[=].resource = composition-001
* entry[+].fullUrl = "urn:uuid:patient-001"
* entry[=].resource = patient-001
* entry[+].fullUrl = "urn:uuid:encounter-001"
* entry[=].resource = encounter-001
* entry[+].fullUrl = "urn:uuid:practitioner-001"
* entry[=].resource = practitioner-001
* entry[+].fullUrl = "urn:uuid:practitioner-002"
* entry[=].resource = practitioner-002
* entry[+].fullUrl = "urn:uuid:procedure-dialysis"
* entry[=].resource = procedure-dialysis
* entry[+].fullUrl = "urn:uuid:observation-bp"
* entry[=].resource = observation-bp
* entry[+].fullUrl = "urn:uuid:observation-pulse"
* entry[=].resource = observation-pulse
* entry[+].fullUrl = "urn:uuid:observation-temp"
* entry[=].resource = observation-temp
* entry[+].fullUrl = "urn:uuid:observation-spo2"
* entry[=].resource = observation-spo2
* entry[+].fullUrl = "urn:uuid:observation-uf"
* entry[=].resource = observation-uf
* entry[+].fullUrl = "urn:uuid:observation-weight-before"
* entry[=].resource = observation-weight-before
* entry[+].fullUrl = "urn:uuid:observation-weight-after"
* entry[=].resource = observation-weight-after
* entry[+].fullUrl = "urn:uuid:medication-admin-heparin"
* entry[=].resource = medication-admin-heparin

Instance: composition-001
InstanceOf: Composition
Usage: #inline
* language = #uz
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:661f9511-f30c-52e5-b827-557766551111"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "011"
* status = #final
* type = $loinc#11516-2 "Shifokor protsedura yozuvi"
* category = $document-category-cs#form-011 "Gemodializ seansi yozuvi"
* subject = Reference(urn:uuid:patient-001)
* encounter = Reference(urn:uuid:encounter-001)
* date = "2026-01-06T13:30:00+05:00"
* author = Reference(urn:uuid:practitioner-001)
* title = "Forma 011 - Gemodializ seansi yozuvi"
* section[0].title = "Hayotiy ko'rsatkichlar"
* section[=].code = $loinc#8716-3 "Hayotiy ko'rsatkichlar"
* section[=].entry[0] = Reference(urn:uuid:observation-bp)
* section[=].entry[+] = Reference(urn:uuid:observation-pulse)
* section[=].entry[+] = Reference(urn:uuid:observation-temp)
* section[=].entry[+] = Reference(urn:uuid:observation-spo2)
* section[+].title = "Dializ parametrlari"
* section[=].code = $loinc#29554-3 "Protsedura yozuvi"
* section[=].entry[0] = Reference(urn:uuid:procedure-dialysis)
* section[=].entry[+] = Reference(urn:uuid:observation-uf)
* section[=].entry[+] = Reference(urn:uuid:observation-weight-before)
* section[=].entry[+] = Reference(urn:uuid:observation-weight-after)
* section[+].title = "Dorilar"
* section[=].code = $loinc#10160-0 "Dori berish"
* section[=].entry = Reference(urn:uuid:medication-admin-heparin)

Instance: patient-001
InstanceOf: Patient
Usage: #inline
* language = #uz
* identifier.type = $v2-0203#AN "Hisob raqami"
* identifier.system = "https://dhp.uz/fhir/core/sid/ambulatory-number"
* identifier.value = "1245"
* name.use = #official
* name.text = "Aziz John"
* name.given[0] = "Aziz"
* name.given[+] = "John"

Instance: encounter-001
InstanceOf: Encounter
Usage: #inline
* language = #uz
* identifier.system = "https://dhp.uz/fhir/core/sid/encounter-id"
* identifier.value = "ENC-2026-01-06-1245"
* status = #completed
* class = $v3-ActCode#AMB "Ambulatoriya"
* subject = Reference(urn:uuid:patient-001)
* participant[0].type = $v3-ParticipationType#PPRF "Asosiy ijrochi"
* participant[=].actor = Reference(urn:uuid:practitioner-001) "Karimov A.A."
* participant[+].type = $v3-ParticipationType#SPRF "Ikkinchi ijrochi"
* participant[=].actor = Reference(urn:uuid:practitioner-002) "Raxmatova M.M."
* actualPeriod.start = "2026-01-06T09:00:00+05:00"
* actualPeriod.end = "2026-01-06T13:00:00+05:00"

Instance: practitioner-001
InstanceOf: Practitioner
Usage: #inline
* language = #uz
* name.use = #official
* name.text = "Karimov A.A."
* name.family = "Karimov"
* name.given[0] = "A."
* name.given[+] = "A."
* qualification.code = $v2-0360#MD "Shifokor"
* qualification.code.text = "Shifokor"

Instance: practitioner-002
InstanceOf: Practitioner
Usage: #inline
* language = #uz
* name.use = #official
* name.text = "Raxmatova M.M."
* name.family = "Raxmatova"
* name.given[0] = "M."
* name.given[+] = "M."
* qualification.code = $v2-0360#RN "Hamshira"
* qualification.code.text = "Hamshira"

Instance: procedure-dialysis
InstanceOf: Procedure
Usage: #inline
* language = #uz
* identifier.type = $v2-0203#PLAC "Buyurtmachi identifikatori"
* identifier.system = "https://dhp.uz/fhir/core/sid/session-number"
* identifier.value = "128"
* status = #completed
* code = $sct#302497006 "Gemodializ"
* code.text = "Gemodializ"
* subject = Reference(urn:uuid:patient-001)
* encounter = Reference(urn:uuid:encounter-001)
* occurrencePeriod.start = "2026-01-06T09:00:00+05:00"
* occurrencePeriod.end = "2026-01-06T13:00:00+05:00"
* performer[0].actor = Reference(urn:uuid:practitioner-001)
* performer[+].actor = Reference(urn:uuid:practitioner-002)
* bodySite = $sct#261665006 "Noma'lum"
* bodySite.text = "Chap AV-fistula"
* used[0].concept = $dialysis-equipment#dialyzer "Dializator"
* used[=].concept.text = "FX 80"
* used[+].concept = $dialysis-equipment#bloodline "Qon magistrali"
* used[=].concept.text = "Arterial/Venoz"
* used[+].concept = $dialysis-equipment#needle "Fistula ignasi"
* used[=].concept.text = "AVF 16G"

Instance: observation-bp
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category = $observation-category#vital-signs "Hayotiy ko'rsatkichlar"
* code = $loinc#85354-9 "Arterial qon bosimi paneli"
* code.text = "Arterial qon bosimi"
* subject = Reference(urn:uuid:patient-001)
* encounter = Reference(urn:uuid:encounter-001)
* effectiveDateTime = "2026-01-06T09:00:00+05:00"
* component[0].code = $loinc#8480-6 "Sistolik qon bosimi"
* component[=].valueQuantity = 150 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolik qon bosimi"
* component[=].valueQuantity = 90 'mm[Hg]' "mmHg"

Instance: observation-pulse
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category = $observation-category#vital-signs "Hayotiy ko'rsatkichlar"
* code = $loinc#8867-4 "Yurak urishi"
* code.text = "Puls"
* subject = Reference(urn:uuid:patient-001)
* encounter = Reference(urn:uuid:encounter-001)
* effectiveDateTime = "2026-01-06T09:00:00+05:00"
* dataAbsentReason = $data-absent-reason#not-performed "Bajarilmagan"

Instance: observation-temp
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category = $observation-category#vital-signs "Hayotiy ko'rsatkichlar"
* code = $loinc#8310-5 "Tana harorati"
* code.text = "Tana harorati"
* subject = Reference(urn:uuid:patient-001)
* encounter = Reference(urn:uuid:encounter-001)
* effectiveDateTime = "2026-01-06T09:00:00+05:00"
* valueQuantity = 36.6 'Cel' "°C"

Instance: observation-spo2
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category = $observation-category#vital-signs "Hayotiy ko'rsatkichlar"
* code = $loinc#2708-6 "Arterial qonda kislorod saturatsiyasi"
* code.text = "Kislorod saturatsiyasi (SpO₂)"
* subject = Reference(urn:uuid:patient-001)
* encounter = Reference(urn:uuid:encounter-001)
* effectiveDateTime = "2026-01-06T09:00:00+05:00"
* dataAbsentReason = $data-absent-reason#not-performed "Bajarilmagan"

Instance: observation-uf
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category = $observation-category#procedure "Protsedura"
* code = $loinc#75935-4 "Olib tashlangan ultrafiltratsiya hajmi"
* code.text = "Ultrafiltratsiya"
* subject = Reference(urn:uuid:patient-001)
* encounter = Reference(urn:uuid:encounter-001)
* effectiveDateTime = "2026-01-06T13:00:00+05:00"
* valueQuantity = 2500 'mL' "mL"

Instance: observation-weight-before
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category = $observation-category#vital-signs "Hayotiy ko'rsatkichlar"
* code = $loinc#29463-7 "Tana vazni"
* code.text = "Seansgacha vazn"
* subject = Reference(urn:uuid:patient-001)
* encounter = Reference(urn:uuid:encounter-001)
* effectiveDateTime = "2026-01-06T09:00:00+05:00"
* valueQuantity = 72.5 'kg' "kg"

Instance: observation-weight-after
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category = $observation-category#vital-signs "Hayotiy ko'rsatkichlar"
* code = $loinc#29463-7 "Tana vazni"
* code.text = "Seansdan keyin vazn"
* subject = Reference(urn:uuid:patient-001)
* encounter = Reference(urn:uuid:encounter-001)
* effectiveDateTime = "2026-01-06T13:00:00+05:00"
* valueQuantity = 70 'kg' "kg"

Instance: medication-admin-heparin
InstanceOf: MedicationAdministration
Usage: #inline
* language = #uz
* status = #completed
* medication.concept = $sct#372877000 "Geparin"
* medication.concept.text = "Geparin"
* subject = Reference(urn:uuid:patient-001)
* encounter = Reference(urn:uuid:encounter-001)
* occurencePeriod.start = "2026-01-06T09:00:00+05:00"
* occurencePeriod.end = "2026-01-06T13:00:00+05:00"
* performer.actor = Reference(urn:uuid:practitioner-002)
* dosage.dose = 2000 '[iU]' "IU"
* dosage.text = "2000 ED"
* note.text = "Asosiy davolash"
