Extension: CarePlanStatusHistory
Id: careplan-status-history
Title: "CarePlan status history"
Description: "Past list of status codes (the current status may be included to cover the start date of the status)"
* ^context.type = #element
* ^context.expression = "CarePlan"
* extension contains
    status 1..1 and
    period 0..1
* extension[status].valueCode from CarePlanStatusVS
* extension[period].valuePeriod
