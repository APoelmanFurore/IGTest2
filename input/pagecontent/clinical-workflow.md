# Clinical Workflow

This chapter describes the core workflow pattern for care coordination in the Dutch healthcare context. It is intentionally minimal and limited to the work described in the TA Workflow document.

## Workflow overview

The model is centered on a Task that tracks one clinical coordination activity from initiation until completion.

1. A Request is created for the clinical action to be carried out.
2. A coordination task is created to track that request.
3. The Placer hosts the task and the Fulfiller updates it as work progresses.
4. The task is completed when the work is done.
5. A Cancellation Request Task is used if the work must stop while already in progress.

## Core actors

### Placer
The Placer initiates the clinical action and hosts the coordination task.

### Fulfiller
The Fulfiller executes the request described by the focus of the task and reports status changes back to the Placer.

## Main task definitions

The IG defines two Task profiles:

- `NLCoordinationTask` — the standard coordination task used to track work from start to finish.
- `NLCancellationRequestTask` — the explicit task used to request cancellation of in-progress work.

## Relationship to the underlying request

The task references the underlying clinical or administrative request through `Task.focus`. This keeps the workflow traceable while preserving the clinical content in the request resource itself.
