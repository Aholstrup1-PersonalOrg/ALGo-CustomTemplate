# BuildInitialize hook for ALGo-CustomTemplate
# Runs at the very start of each build in the consuming repos.

$ErrorActionPreference = 'Stop'

Write-Host "::group::Custom template hook: BuildInitialize"
Write-Host "Repository : $env:GITHUB_REPOSITORY"
Write-Host "Workflow   : $env:GITHUB_WORKFLOW"
Write-Host "Ref        : $env:GITHUB_REF"
Write-Host "Run number : $env:GITHUB_RUN_NUMBER"
Write-Host "Template   : ALGo-CustomTemplate (Aholstrup1-PersonalOrg)"
Write-Host "::endgroup::"
