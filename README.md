# Radius Actions Example

These are examples of using Radius in GitHub Actions to deploy and application. 

## Actions 

There are two actions here that are used as examples.

- `deploy-application`: Deploys the application contained in `app.bicep`.
- `setup-environment`: Creates an environment based on the template in `env.bicep`.

Note: The only reason this example uses Azure/AKS is so the results can be persisted. The examples would work equally well with any other Kubernetes cluster and infra.

## Usage

These actions can be used to dynamically provision Radius environments on a Kubernetes cluster, and then deploy applications. 

Use workflow dispatch to trigger the actions.

Note: This could be extended in the future to dynamically provision Kubernetes clusters and landing zones as well. 

## Configuration

Right now this assumes a pre-existing AKS cluster and pre-configured credentials for Azure by following [this link](https://learn.microsoft.com/en-us/azure/developer/github/connect-from-azure?tabs=azure-cli%2Clinux).

You should also install Radius: `rad install kubernetes`

The actions expect the following values to be configured in repo secrets.

| Secret                 | Description                                               |
| ---------------------- | --------------------------------------------------------- |
| AZURE_SUBSCRIPTION_ID  | The Azure subscription id (guid).                         |
| AZURE_RESOURCE_GROUP   | The Azure resource group containing an AKS cluster.       |
| AZURE_AKS_CLUSTER_NAME | The AKS cluster name.                                     |
| AZURE_CLIENT_ID        | The Azure Service Principal AppId (also called ClientId). |
| AZURE_TENANT_ID        | The Azure Service Principle TenantID.                     |

