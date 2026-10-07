# NL Coordination Clinical Workflows IG

This repository contains a starter FHIR Implementation Guide focused on clinical workflows and a Task profile named `NLCoordinationTask`.

## Included content

- Clinical workflow narrative pages
- IG definition for the Dutch care coordination scope
- FHIR profile on `Task` named `NLCoordinationTask`
- Example instance for a coordinated clinical task

## Build

```powershell
.\updatePublisher.ps1
java -jar .\input-cache\publisher.jar -ig .
```

## Notes

This project is intentionally scoped to a small but realistic clinical workflow use case and can be extended with additional profiles, examples, and terminology.
