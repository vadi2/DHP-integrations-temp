Extension: CarePlanStatusHistory
Id: careplan-status-history
Title: "CarePlan Status History"
* ^context.type = #element
* ^context.expression = "CarePlan"
* extension contains
    status 1..1 and
    period 0..1
* extension[status].valueCode from CarePlanStatusVS
* extension[period].valuePeriod