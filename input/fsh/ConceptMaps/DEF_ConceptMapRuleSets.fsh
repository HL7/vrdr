RuleSet: ConceptMapIntro(name, legacy, vsname)
* extension
  * url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
  * valueCode = #pher
* name = "{name}"
* title = "{name} Concept Map"
* status = #draft
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/fhir"
* description = "A mapping between NCHS {legacy} and FHIR {name} Value Sets"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext.valueCodeableConcept.text = "for IJE to FHIR alignment"
* jurisdiction = urn:iso:std:iso:3166#US
* purpose = "To help implementers map from {legacy} to FHIR Vocabulary.

Note: The codesystem identifer '{legacy}' is not a proper codesystem URI.  
Work is underway to define proper URIs that will be included in future versions
of this concept map. "
* targetCanonical = Canonical({vsname})

RuleSet: MapConcept(code, display, targetcode, targetdisplay)
* group[=].element[+].code = {code}
* group[=].element[=].display = {display}
* group[=].element[=].target.code = {targetcode}
* group[=].element[=].target.display = {targetdisplay}
* group[=].element[=].target.equivalence = #equivalent

RuleSet: AddGroup(source, target)
* group[+].target = {target}
* group[=].source = {source}

RuleSet: UnmatchedMapConcept(code, display, targetcode, targetdisplay)
* group[=].element[+].display = {display}
* group[=].element[=].target.code = {targetcode}
* group[=].element[=].target.display = {targetdisplay}
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = {code}