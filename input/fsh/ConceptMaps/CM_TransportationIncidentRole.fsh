Instance: TransportationIncidentRoleCM
InstanceOf: ConceptMap
// Id: vrdr-transportation-incident-role-cm
Usage: #definition
* insert ConceptMapIntro(Transportation Incident Role, TransportationIncidentRoleVS)
* insert AddGroup("IJE",$sct)
* insert MapConcept( #DR,  "Driver/Operator",#236320001, "Vehicle driver")
* insert MapConcept( #PA,  "Driver/Operator",#257500003, "Vehicle passenger")
* insert MapConcept( #PE,  "Driver/Operator",#257518000, "Pedestrian")
* insert AddGroup("IJE",$v3-NullFlavor)
* insert UnmatchedMapConcept( "Not Applicable" ,  "Don't map ",#NA , "Not Applicable")
* insert UnmatchedMapConcept( "Unknown" ,  "Don't map",#UNK , "Not Applicable")
* insert UnmatchedMapConcept( "Full Text" ,  "Other Role",#OTH , "Other")