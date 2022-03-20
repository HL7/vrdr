Instance: DeathLocation-Example1
InstanceOf: DeathLocation
Usage: #example
Description: "DeathLocation-Example1 - State = Jurisdiction"
* insert AddMetaProfile(DeathLocation)
* name = "Pecan Grove Nursing Home"
* description = "nursing home"
* address.city = "Albany"
* address.state = "NY"
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
* address.state.extension[nationalReportingJurisdictionId].valueString = "YC"
* address.country = "US"
* type = $sct#450381000124100