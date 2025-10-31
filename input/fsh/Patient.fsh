Profile: PatientBirth
Parent: UZCorePatient
Id: patient-birth
Title: "Patient of Birth"
Description: "Uzbekistan Birth Patient profile, used to represent patients administrative information"
* ^status = #draft

* birthDate 1..1 MS
* name 0..1
* identifier[birthCertificate] 1..1
* extension contains 
    patient-birthTime named birthTime 0..1 and
    patient-birthPlace named birthPlace 0..1 and
    patient-placeOfBirthType named placeOfBirthType 0..1

* multipleBirth[x] 0..1
* contact 0..* MS
* generalPractitioner 0..1 MS
* managingOrganization 0..1 MS
* link 0..* MS