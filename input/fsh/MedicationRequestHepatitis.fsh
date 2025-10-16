// Profile: MedicationRequestHepatitis
// Parent: MedicationRequest
// Id: medicationrequest-hepatitis
// Title: "MedicationRequest (Hepatitis)"
// Description: "Заказ лекарств для пациента или группы"
// * ^version = "5.0.0"
// * ^experimental = true
// * ^status = #active
// * ^publisher = "Uzinfocom"

// * identifier MS
// * identifier ^short = "Идентификатор"

// * medication MS
// * medication only CodeableReference(Medication)
// * medication from HepatListDrugsVS (required)
// * medication ^short = "Название назначенного лекарства"

// * subject MS
// * subject only Reference(Patient)
// * subject ^short = "Пациент прописал лекарство"

// * requester MS
// * requester only Reference(Practitioner or Organization)
// * requester ^short = "Кто назначил лекарство"

// * reason MS
// * reason only CodeableReference(Condition or Observation)
// * reason from HepatAccauntingTypeVS (required)
// * reason ^short = "По какой причине его назначили (например, гепатит В)"

// * dispenseRequest MS
// * dispenseRequest ^short = "Количество лекарства"

// * basedOn MS
// * basedOn only Reference(CarePlan)
// * basedOn ^short = "Если центр по лечению гепатита назначает лекарства в соответствии с долгосрочным планом лечения"

// * context MS
// * context only Reference(EpisodeOfCare)
// * context ^short = "Если центр по лечению гепатита назначает препарат для определенного курса лечения"