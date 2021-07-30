# oDip Web UI v1.1

Repurposed from previous assignment to serve as a UI that sends a JSON object to the oDip API service.

## Pipeline Details

### Main.yml:
- Integration:
    - Sets up Python v3.9
    - Installs Safety and Bandit manually (not contained within Requirements file, personal choice for the developer over whether to run these modules locally)
    - Bandit job currently skipped due to existence of django Secret Key in source code, Bandit will not pass with the existence of this key - (This would be fixed at a later date and would not exist in a production environment. Out of scope for this assignment)

* Deploy:
    * Needs Integration to complete
    * Configures AWS Credentials using GitHub Secrets
    * Creates a CodeDeploy Deployment object using AWS CLI and sends to pre-defined application on CodeDeploy

### Appspec.yml

* After-Install:
    * Removes static files
    * Runs `collectstatic` command through django app
    * Restarts GUnicorn
