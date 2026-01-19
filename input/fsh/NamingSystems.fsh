// This file contains definitions of NamingSystems for the integrations IG

Instance: doc-form-number
InstanceOf: NamingSystem
Description: "Official form numbers for standardized clinical documents in Uzbekistan"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/integrations/NamingSystem/doc-form-number"
* name = "UzbekistanDocumentFormNumberSystem"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Ministry of Health of the Republic of Uzbekistan"
* date = "2025-01-19"
* description = "Naming system for official form numbers assigned to standardized clinical documents in Uzbekistan (e.g., Form 066, 083, 086, 095)"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used to identify the official form number when a clinical document corresponds to a standardized form. Not all documents have a form number."
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/integrations/sid/doc/uz/form-number"
* uniqueId[=].preferred = true
* uniqueId[=].comment = "This is the canonical URI for the Uzbekistan document form number system"
