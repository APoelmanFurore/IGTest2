Instance: Example-NLCoordinationPatient
InstanceOf: Patient
Usage: #example
* name.family = "Jansen"
* name.given[0] = "Maria"
* gender = #female
* birthDate = "1978-04-16"

Instance: Example-NLCoordinationServiceRequest
InstanceOf: ServiceRequest
Usage: #example
* status = #active
* intent = #order
* subject = Reference(Example-NLCoordinationPatient)
* code.text = "Specialist review and discharge planning"
* authoredOn = "2026-10-07"

Instance: Example-NLCoordinationOrganization
InstanceOf: Organization
Usage: #example
* name = "Example Coordination Center"

Instance: Example-NLCoordinationPractitioner
InstanceOf: Practitioner
Usage: #example
* name.family = "Klein"
* name.given[0] = "Anna"
