RuleSet: ConceptMapIntro(name, vsname)
* name = "{name}"
* title = "{name} Concept Map"
* status = #draft
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/fhir"
* description = "A mapping between NCHS IJE and FHIR {name} Value Sets"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext.valueCodeableConcept.text = "for IJE to FHIR alignment"
* jurisdiction = urn:iso:std:iso:3166#US
* purpose = "To help implementers map from IJE to FHIR Vocabulary"
* targetCanonical = Canonical({vsname})
* sourceCanonical = "#IJE"

RuleSet: MapConcept(code, display, targetcode, targetdisplay)
* group[=].element[+]
  * code = {code}
  * display = {display}
  * target
    * code = {targetcode}
    * display = {targetdisplay}
    * equivalence = #equivalent

RuleSet: AddGroup(source, target)
* group[+].target = {target}
* group[=].source = {source}

RuleSet: UnmatchedMapConcept(code, display, targetcode, targetdisplay)
* group[=].element[+]
  * code = {code}
  * display = {display}
  * target
    * equivalence = #unmatched
    * comment = {code}