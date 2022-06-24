Instance: DeathRosterBundle-Example1
InstanceOf: DeathRosterBundle
Usage: #example
Description: "DeathRosterBundle-Example1"
* insert AddMetaProfile(DeathRosterBundle)
* insert Identifiers2020NY000182
* meta.extension[aliasStatus].valueBoolean = false
* meta.extension[replaceStatus].valueCodeableConcept = ReplaceStatusCS#original "original record"
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* insert addentry(Patient, Decedent-Example1)
* insert addentry(RelatedPerson, DecedentFather-Example1)
* insert addentry(RelatedPerson, DecedentMother-Example1)
* insert addentry(Observation, DeathDate-Example2)
* insert addentry(Location, DeathLocation-Example1)