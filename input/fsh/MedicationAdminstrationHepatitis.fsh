// Profile: MedicationAdministrationHepatitis
// Parent: MedicationAdministration
// Id: medicationadministration-hepatitis
// Title: "MedicationAdministration Hepatitis"
// Description: "Назначение лекарств пациенту"

// * identifier MS
// * identifier ^short = "Идентификатор"

// * basedOn MS
// * basedOn only Reference(CarePlan)
// * basedOn ^short = "Связано с MedicationRequest или CarePlan"

// * partOf MS
// * partOf only Reference(MedicationAdministration or Procedure or MedicationDispense)
// * partOf ^short = "Компонент лечения или посещения"

// * category MS
// * category from https://terminology.dhp.uz/ValueSet/hepat_accounting-type (required)
// * category ^short = "Тип приема лекарств"

// * medication MS
// * medication only CodeableReference(Medication)
// * medication from https://terminology.dhp.uz/ValueSet/hepat_nameDrugs (required)
// * medication ^short = "Определяет код введенного препарата"

// * encounter MS
// * encounter only Reference(Encounter)
// * encounter ^short = "Посетите место, где принимались лекарства"

// * performer MS
// * performer ^short = "Организация, предоставившая лекарство"

// * performer.actor MS
// * performer.actor only CodeableReference(PractitionerRole)
// * performer.actor ^short = "Исполнитель (роль врача/организации)"

// * performer.function MS
// * performer.function ^short = "Тип исполнения"

// * dosage MS
// * dosage ^short = "Информация о дозировке"

// * dosage.text MS
// * dosage.text ^short = "Текстовые инструкции по дозировке, например '1 tablet (400 mg) orally once daily'"

// * dosage.route MS
// * dosage.route.coding MS

// * dosage.dose MS
// * dosage.dose.value MS
// * dosage.dose.unit MS
// * dosage.dose.system MS
// * dosage.dose.code MS

// * subject MS
// * subject only Reference(Patient)
// * subject ^short = "Определяет пациента, которому вводилось лекарство"
