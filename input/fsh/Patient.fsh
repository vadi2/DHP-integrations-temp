Profile: PatientBirth
Parent: Patient
Id: patient-birth
Title: "Patient of Birth"
Description: "Uzbekistan Birth Patient profile, used to represent patients administrative information"
* ^experimental = true
* ^status = #active
* ^date = "2025-06-11"
* ^publisher = "Uzinfocom"

* identifier 1..* MS
  * extension contains data-absent-reason named data-absent-reason 0..1 MS
* identifier.use from IdentifierUseVS (required)
* identifier.type from IdentifierTypeVS (required)
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Ways a practitioner can be identified"
* identifier ^slicing.ordered = false
* identifier contains nationalId 0..1 MS and
    passportLocal 0..1 MS and
    passportInternational 0..1 MS and
    birthCertificate 0..1 MS and
    driversLicense 0..1 MS and
    diplomaticPassport 0..1 MS and
    healthCardId 0..1 MS and
    militaryId 0..1 MS and
    // socialSecurity 0..1 MS and
    penitentiaryInstitution 0..1 MS

* identifier[passportLocal] 
  * system 1..1 MS
  * system = $passport-local
  * type 1..1 MS
  * type = $identifier-type#PPN "Passport number"
  * use = #official
  * value 1..1 MS

* identifier[passportInternational]
  * system 1..1 MS
  * system = $passport-international
  * type 1..1 MS
  * type = $identifier-type#PPN "Passport number"
  * use = #official
  * value 1..1 MS

* identifier[nationalId]
  * system 1..1 MS
  * system = $nationaluniqueID
  * type 1..1 MS
  * type = $identifier-type#NI "National unique individual identifier"
  * use = #official
  * value 1..1 MS

* identifier[birthCertificate]
  * system 1..1 MS
  * system = $birthcertificate
  * type 1..1 MS
  * type = $identifier-type#BCT "Birth Certificate"
  * use = #official
  * value 1..1 MS

* identifier[driversLicense]
  * system 1..1 MS
  * system = $driverslicense
  * type 1..1 MS
  * type = $identifier-type#DL "Driver's license number"
  * use = #official
  * value 1..1 MS

* identifier[diplomaticPassport]
  * system 1..1 MS
  * system = $diplomaticpassport
  * type 1..1 MS
  * type = $identifier-type#DP "Diplomatic Passport"
  * use = #official
  * value 1..1 MS

* identifier[healthCardId]
  * system 1..1 MS
  * system = $healthcard
  * type 1..1 MS
  * type = $identifier-type#HC "Health card number"
  * use = #official
  * value 1..1 MS

* identifier[militaryId]
  * system 1..1 MS
  * system = $militaryID
  * type 1..1 MS
  * type = $identifier-type#MI "Military ID number"
  * use = #official
  * value 1..1 MS

* identifier[penitentiaryInstitution]
  * system 1..1 MS
  * system = $penitentiaryinstitution
  * type 1..1 MS
  * type = $identifier-type#PCN "Penitentiary/correctional institution Number"
  * use = #official
  * value 1..1 MS

* extension contains patient-nationality named nationality 0..1 MS and
    patient-citizenship named citizenship 0..1 MS
* extension[nationality].extension[code].valueCodeableConcept from NationalityVS (required)
* extension[citizenship].extension[code].valueCodeableConcept from CountriesDigitalMVDVS (required)
* gender MS
  * extension contains GenderOtherUZ named gender-other 0..1 MS
* obeys uzcore-gender-other-2
* insert IntAndUzAddressRules
* maritalStatus from MaritalStatusVS (required)
* insert HumanName
* active MS
* birthDate MS 
