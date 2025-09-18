ValueSet: CarePlanStatusVS
Id: care-plan-status-vs
Title: "Care plan status translations (HL7)"
Description: "Value set for CarePlan.status HL7 base codes"
* ^url = "https://terminology.dhp.uz/ValueSet/care-plan-status-vs"
* ^status = #active
* ^experimental = true

* include $care-plan-status#draft
* include $care-plan-status#active
* include $care-plan-status#revoked
* include $care-plan-status#completed
* include $care-plan-status#entered-in-error