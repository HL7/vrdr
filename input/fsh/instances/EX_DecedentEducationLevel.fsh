Instance: DecedentEducationLevel-Example1
InstanceOf: DecedentEducationLevel    // SHould probably make a VRDR Education lEvel profile wiht this fixed
Usage: #example
Description: "DeathDate-Example1"
* insert AddMetaProfile(DecedentEducationLevel)
* subject = Reference(Decedent-Example1)
* valueCodeableConcept = $v3-EducationLevel#SEC "Some secondary or high school education" 
