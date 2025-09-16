Profile: CarePlanHepatitis
Parent: CarePlan
Id: careplan-hepatitis
Title: "CarePlan Hepatitis"
Description: "План медицинского обслуживания для пациента (гепатит)"

* identifier MS
* identifier ^short = "Идентификатор"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Определяет пациента, для которого выбран план лечения"

* encounter MS
* encounter only Reference(Encounter)
* encounter ^short = "Определяет Прием, на котором был создан план лечения"

* basedOn MS
* basedOn only Reference(CarePlan)
* basedOn ^short = "Это зависеть от предыдущих планов."

* category MS
* category only CodeableConcept
* category from https://terminology.medcore.uz/ValueSet/ICD-10 (required)
* category ^short = "Определяет код характера лечения"

* custodian MS
* custodian only Reference(Organization)
* custodian ^short = "Определяет организацию, ответственную за реализацию плана"

* note MS
* note only Annotation
* note ^short = "Comments about the plan"
