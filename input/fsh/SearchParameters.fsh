Instance: NLCoordinationTaskFocusSearchParameter
InstanceOf: SearchParameter
Usage: #definition
* url = "http://example.org/fhir/SearchParameter/nl-coordination-task-focus"
* version = "0.0.1-alpha"
* name = "NLCoordinationTaskFocusSearchParameter"
* status = #draft
* experimental = true
* description = "Search for coordination tasks by their focus."
* code = #focus
* base[0] = #Task
* type = #reference
* expression = "Task.focus"
* target[0] = #ServiceRequest
* target[+] = #Procedure
* target[+] = #MedicationRequest
* target[+] = #CarePlan

Instance: NLCoordinationTaskOwnerSearchParameter
InstanceOf: SearchParameter
Usage: #definition
* url = "http://example.org/fhir/SearchParameter/nl-coordination-task-owner"
* version = "0.0.1-alpha"
* name = "NLCoordinationTaskOwnerSearchParameter"
* status = #draft
* experimental = true
* description = "Search for coordination tasks by their owner."
* code = #owner
* base[0] = #Task
* type = #reference
* expression = "Task.owner"

Instance: NLCoordinationTaskStatusSearchParameter
InstanceOf: SearchParameter
Usage: #definition
* url = "http://example.org/fhir/SearchParameter/nl-coordination-task-status"
* version = "0.0.1-alpha"
* name = "NLCoordinationTaskStatusSearchParameter"
* status = #draft
* experimental = true
* description = "Search for coordination tasks by their workflow status."
* code = #status
* base[0] = #Task
* type = #token
* expression = "Task.status"
