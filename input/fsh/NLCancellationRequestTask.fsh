Invariant: nl-cancellation-request-task-has-focus
Description: "A cancellation request task must reference the coordination task that is to be cancelled."
Expression: "focus.exists()"
Severity: #error

Profile: NLCancellationRequestTask
Parent: Task
Id: NLCancellationRequestTask
Title: "NL Cancellation Request Task"
Description: "Task profile used to request cancellation of an in-progress coordination task."
* ^status = #draft
* status 1..1
* status from http://hl7.org/fhir/ValueSet/task-status (required)
* intent = #order
* intent 1..1
* intent from http://hl7.org/fhir/ValueSet/task-intent (required)
* code 1..1
* description 1..1
* authoredOn 1..1
* focus 1..1
* for 1..1
* for.reference 1..1
* owner 1..1
* requester 1..1
* priority 0..1
* businessStatus 0..1
* statusReason 0..1
* restriction 0..1
* obeys nl-cancellation-request-task-has-focus

Instance: Example-NLCancellationRequestTask
InstanceOf: NLCancellationRequestTask
Title: "Example NL Cancellation Request Task"
Description: "Example of a task used to halt an active care coordination activity."
Usage: #example
* status = #requested
* intent = #order
* code.text = "Cancellation request"
* description = "Request cancellation of the active specialist coordination request."
* authoredOn = "2026-10-07"
* priority = #routine
* for = Reference(Example-NLCoordinationPatient)
* owner = Reference(Example-NLCoordinationOrganization)
* requester = Reference(Example-NLCoordinationPractitioner)
* focus = Reference(Example-NLCoordinationTask)
