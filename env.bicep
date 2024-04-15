import radius as radius

param name string

resource env 'Applications.Core/environments@2023-10-01-preview' = {
  name: name
  properties: {
    compute: {
      kind: 'kubernetes'
      namespace: name
    }
    recipes: {
      'Applications.Datastores/redisCaches': {
        default: {
          templatePath: 'ghcr.io/radius-project/recipes/local-dev/rediscaches:0.32'
          templateKind: 'bicep'
        }
      }
    }
  }
}
