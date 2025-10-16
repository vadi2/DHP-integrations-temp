Extension: UZCarePlanHomeStatusExtension
Id: uz-care-plan-home-status-ext
Title: "Uzbekistan CarePlan additional statuses"
Description: "Extension for national CarePlan status codes (Uzbekistan)"
* valueCodeableConcept 1..1
* valueCodeableConcept from CarePlanStatusHomeVS (required)
* ^context[0].type = #element
* ^context[0].expression = "CarePlan"
