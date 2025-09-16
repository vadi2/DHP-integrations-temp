Profile: EpisodeOfCareHepatitis
Parent: EpisodeOfCare
Id: episodeofcare-hepatitis
Title: "EpisodeOfCare Hepatitis"
Description: "Ресурс, представляющий процесс лечения пациента в больнице или медицинском учреждении."

* identifier MS
* identifier ^short = "Идентификатор"

* patient MS
* patient only Reference(Patient)
* patient ^short = "Определяет пациента, для которого выбран план лечения"

* managingOrganization MS
* managingOrganization only Reference(Organization)
* managingOrganization ^short = "Организация, управляющая процессом лечения"

* period MS
* period only Period
* period ^short = "Продолжительность процесса лечения (3 месяца или 6 месяцев)"

* careManager MS
* careManager only Reference(Practitioner)
* careManager ^short = "Врач, контролирующий процесс лечения"

* referralRequest MS
* referralRequest only Reference(ServiceRequest)
* referralRequest ^short = "Медицинское учреждение или врач могут направить пациента в специализированный центр по лечению гепатита."
