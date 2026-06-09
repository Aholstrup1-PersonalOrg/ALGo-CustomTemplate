# ALGo-CustomTemplate

A **customized AL-Go for GitHub template** used as the demo template in
the "Large scale DevOps with AL-Go" BC TechDays talk.

Consumer repos (`ALGo-EndRepo-A`, `-B`, `-C`) all point their
`templateUrl` at this repo and pull changes via the **Update AL-Go
System Files** workflow. That round-trip is the live demo on
slide 16.

## What's different vs. `microsoft/al-go-pte`

| Customisation | Where | Why it's in the demo |
|---|---|---|
| `CustomJob-CreateBuildTag` | `.github/workflows/CICD.yaml` | Shows AL-Go preserves `CustomJob-*` jobs across template updates. |
| `BuildInitialize.ps1` hook | `.AL-Go/BuildInitialize.ps1` | Shows the new hook contract from microsoft/AL-Go#2249 — replaces the old BcContainerHelper override pattern. |
| Repo-level settings (`country`, `ConditionalSettings` by trigger) | `.github/AL-Go-Settings.json` | Demonstrates the settings hierarchy and the new trigger-conditional settings from microsoft/AL-Go#2238. |

## Demo flow

1. Bump something in this template (e.g., change the hook's log line, or
   tweak a setting).
2. Open `ALGo-EndRepo-A` and run **Update AL-Go System Files** with
   `directCommit: true`.
3. Run **CI/CD** on the resulting commit and show the new behaviour
   landing in the consumer repo — without ever touching A directly.

> Updating AL-Go files *from* the custom template (vs. only `microsoft/AL-Go`)
> is the capability added by microsoft/AL-Go#1985 — this template only
> works as a demo because of that change.

