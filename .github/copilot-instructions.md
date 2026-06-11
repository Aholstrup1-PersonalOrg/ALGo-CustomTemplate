# Copilot Instructions

These instructions apply to all AL projects that consume the `ALGo-CustomTemplate` AL-Go template. They are synced automatically by AL-Go via the `customALGoFiles.filesToInclude` setting.

## Coding style

- Always use 4-space indentation in AL code.
- Use PascalCase for object names, procedures, and variables; camelCase is not allowed in AL.
- Prefer `TextBuilder` over string concatenation in loops.
- All public procedures must have an XML documentation comment describing their purpose and parameters.

## Object IDs

- New objects must use IDs in the range `50000..50099` unless the developer specifies otherwise.
- Never reuse the ID of a deleted object within the same app.

## Telemetry

- Every catchable error must emit a telemetry event via `Session.LogMessage` with a stable event ID (`AL-0001`, `AL-0002`, ...).
- Do not log personally identifiable information (PII) in telemetry payloads.

## Tests

- Every new feature must ship with at least one happy-path test and one error-path test in the test app.
- Test procedure names follow the pattern `Test<Feature>_<Scenario>_<Expected>`.

## Pull requests

- Update `CHANGELOG.md` for every user-visible change.
- Reference the work item ID in the PR description (e.g. `Fixes AB#12345`).