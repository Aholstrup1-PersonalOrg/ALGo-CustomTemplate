# BuildInitialize hook for ALGo-CustomTemplate
#
# Runs at the very start of each build in the consuming repos.
# Hook contract was added in microsoft/AL-Go#2249 (replaces older
# BcContainerHelper override patterns). Anything written to the host
# console here shows up in the CI/CD log of every downstream repo.
#
# Demo use: prove that customisations from the template (logic, not
# just settings) actually propagate to ALGo-EndRepo-A/B/C.

$ErrorActionPreference = 'Stop'

Write-Host "::group::Custom template hook: BuildInitialize"
Write-Host "Repository : $env:GITHUB_REPOSITORY"
Write-Host "Workflow   : $env:GITHUB_WORKFLOW"
Write-Host "Ref        : $env:GITHUB_REF"
Write-Host "Run number : $env:GITHUB_RUN_NUMBER"
Write-Host "Template   : ALGo-CustomTemplate (Aholstrup1-PersonalOrg)"
Write-Host "::endgroup::"
