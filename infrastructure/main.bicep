
@allowed(['dev', 'prod'])
param environment string

var myName = 'rmere'

targetScope = 'resourceGroup'

module appService './appservice.bicep' = {
  name: 'appservice'
  params: {
    appName: 'workshop-dnazghbicep-${myName}-${environment}'
    myName: myName
    location: 'centralus'
    environment: environment
  }
}
