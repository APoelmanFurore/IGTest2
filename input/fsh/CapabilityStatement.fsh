Instance: NLCoordinationWorkflowCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition
* url = "http://example.org/fhir/CapabilityStatement/nl-coordination-workflow"
* version = "0.0.1-alpha"
* name = "NLCoordinationWorkflowCapabilityStatement"
* title = "NL Coordination Workflow Capability Statement"
* status = #draft
* experimental = true
* date = "2026-10-07"
* publisher = "Example Organization"
* kind = #capability
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* rest[0].mode = #server
* rest[0].resource[0].type = #Task
* rest[0].resource[0].profile = Canonical(NLCoordinationTask)
* rest[0].resource[0].supportedProfile[0] = Canonical(NLCancellationRequestTask)
* rest[0].resource[0].interaction[0].code = #read
* rest[0].resource[0].interaction[+].code = #create
* rest[0].resource[0].interaction[+].code = #update
* rest[0].resource[0].interaction[+].code = #search-type
* rest[0].resource[0].searchParam[0].name = "focus"
* rest[0].resource[0].searchParam[0].definition = "http://example.org/fhir/SearchParameter/nl-coordination-task-focus"
* rest[0].resource[0].searchParam[0].type = #reference
* rest[0].resource[0].searchParam[+].name = "owner"
* rest[0].resource[0].searchParam[=].definition = "http://example.org/fhir/SearchParameter/nl-coordination-task-owner"
* rest[0].resource[0].searchParam[=].type = #reference
* rest[0].resource[0].searchParam[+].name = "status"
* rest[0].resource[0].searchParam[=].definition = "http://example.org/fhir/SearchParameter/nl-coordination-task-status"
* rest[0].resource[0].searchParam[=].type = #token
