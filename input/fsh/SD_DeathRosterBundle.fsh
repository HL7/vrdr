Profile: DeathRosterBundle
Parent: Bundle
Id: vrdr-death-roster-bundle
Title: "Death ROster Bundle"
Description: "Death Roster Bundle (Bundle): A bundle containing instances of the resources comprising death roster content.  This bundle is information-content equivalent to the traditional Death Roster."
* insert RequireMetaProfile(DeathRosterBundle)
* insert BundleIdentifiers // includes certificate number
* type 1..1
* type only code
* type = #collection (exactly)
// Note:  Bundle extends the base Resource type rather than the DomainResource type,
// so there actually isn't an extension element to add extensions to.
// A workaround is to add extensions to meta:
* meta.extension contains
    AliasStatus named aliasStatus 0..1 and
    ReplaceStatus named replaceStatus 0..1
* entry.resource 1..1 // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile"
* insert BundleSlice(  Decedent,  1, 1,  Decedent,  Decedent,  Decedent)
* insert BundleSlice(  DecedentFather,  0, 1,  DecedentFather,  DecedentFather,  DecedentFather)
* insert BundleSlice(  Mother,  0, 1,  DecedentMother,  DecedentMother,  DecedentMother)
* insert BundleSlice(  DeathLocation,  0, 1,  DeathLocation,  DeathLocation,  DeathLocation)
* insert BundleSlice(  DeathDate,  0, 1,  DeathDate,  DeathDate,  DeathDate)
