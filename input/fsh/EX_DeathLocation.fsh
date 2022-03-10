Instance: DeathLocation-Example1
InstanceOf: DeathLocation
Usage: #example
Description: "DeathLocation-Example1 - State = Jurisdiction"
* insert AddMetaProfile(DeathLocation)
* name = "Pecan Grove Nursing Home"
* description = "nursing home"
* address.state = "MA"
* address.country = "US"
* type = $sct#450381000124100

Instance: DeathLocation-Example2
InstanceOf: DeathLocation
Usage: #example
Description: "DeathLocation-Example2 - State != Jurisdiction"
* insert AddMetaProfile(DeathLocation)
* name = "Pecan Grove Nursing Home"
* description = "nursing home"
* address.city = "Queens"
* address.state = "NY"
* address.state.extension[nationalReportingJurisdictionId].value[x] = #YC
* address.country = "US"
* type = $sct#450381000124100