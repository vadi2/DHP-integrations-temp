ValueSet: CarePlanStatusVS
Id: care-plan-status-vs
Title: "Care plan status translations"
Description: "Value set for care plan status translations"
* ^url = "https://terminology.dhp.uz/ValueSet/care-plan-status-vs"
* ^status = #active
* ^experimental = true

* include $care-plan-status#draft
* include $care-plan-status#active
* include $care-plan-status#revoked
* include $care-plan-status#completed
* include $care-plan-status#entered-in-error

* include $care-plan-status-home-cs#emdoc-0002-0001
* include $care-plan-status-home-cs#emdoc-0002-0002
* include $care-plan-status-home-cs#emdoc-0002-0003
* include $care-plan-status-home-cs#emdoc-0002-0004
* include $care-plan-status-home-cs#emdoc-0002-0005
