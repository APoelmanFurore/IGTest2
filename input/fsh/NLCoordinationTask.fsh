Invariant: nl-coordination-task-has-focus
Description: "A NL Coordination Task must reference the underlying Request or clinical action being coordinated."
Expression: "focus.exists()"
Severity: #error

Invariant: nl-coordination-task-has-description
Description: "A NL Coordination Task must describe the work to be done."
Expression: "description.exists()"
Severity: #error

Profile: NLCoordinationTask
Parent: Task
Id: NLCoordinationTask
Title: "NL Coordination Task"
Description: "Task profile for tracking a clinical coordination activity in a care workflow from initiation through completion."
* ^status = #draft
* status 1..1
* status from http://hl7.org/fhir/ValueSet/task-status (required)
* intent = #order
* intent 1..1
* intent from http://hl7.org/fhir/ValueSet/task-intent (required)
* code 1..1
* code ^short = "The type of coordination activity being carried out"
* description 1..1
* authoredOn 1..1
* focus 1..1
* for 1..1
* for.reference 1..1
* for.identifier 0..1
* owner 1..1
* requester 1..1
* priority 0..1
* businessStatus 0..1
* statusReason 0..1
* restriction 0..1
* basedOn 0..*
* output 0..*
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open
* input contains supplementalResource 0..* and supplementalQuery 0..*
* input[supplementalResource].type = http://example.org/fhir/CodeSystem/nl-task-parameter#supplemental-resource
* input[supplementalResource].value[x] only Reference
* input[supplementalQuery].type = http://example.org/fhir/CodeSystem/nl-task-parameter#supplemental-query
* input[supplementalQuery].value[x] only string
* obeys nl-coordination-task-has-focus
* obeys nl-coordination-task-has-description

Instance: Example-NLCoordinationTask
InstanceOf: NLCoordinationTask
Title: "Example NL Coordination Task"
Description: "Example of a task used to coordinate specialist review and discharge planning."
Usage: #example
* status = #requested
* intent = #order
* code.text = "Care coordination"
* description = "Coordinate specialist review and discharge planning for the patient."
* authoredOn = "2026-10-07"
* priority = #routine
* for = Reference(Example-NLCoordinationPatient)
* owner = Reference(Example-NLCoordinationOrganization)
* requester = Reference(Example-NLCoordinationPractitioner)
* focus = Reference(Example-NLCoordinationServiceRequest)
* input[0].type = http://example.org/fhir/CodeSystem/nl-task-parameter#supplemental-resource
* input[0].valueReference = Reference(Example-NLCoordinationServiceRequest)
