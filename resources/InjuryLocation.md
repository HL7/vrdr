##  Injury Location

Decedent Age is a profile of the [FHIR STU3 Observation](http://www.hl7.org/fhir/observation.html) resource. It is used to communicate the decedent's chronological age at the time of death. When present, the effective date of this observation shall be equal to the decedent's date of death. Age (Observation.valueQuantity.value) is derived as the difference in time between the decedent's death date and birth date. When age is less than or equal to one day then unit shall be *"minutes"*, when age is less than or equal to one year then unit shall be *"days"*, otherwise unit shall be *"years"*.

---

### **UML Expression**

<center>

{{render:vrdr/vrdrinjurylocationUML}}</center>

---

### **Structure Definition**

{{profile:vrdr/vrdrinjurylocation, expand}}

---

### **Terminolgy Bindings**

|Element Path|Fixed Value/Value Set|Code System|
|-
|Observation.status|"final" - Final|observation-status|
|Observation.code|"30525-0" - Age|LOINC|
|Observation.valueQuantity.unit|AgeUnitOfMeasure||

---

### **Element Table**

{{table:vrdr/vrdrinjurylocation, expand}}

---

### **Requirements Traceability Mappings**

|Element Path|Reference|Location|Data Item|
|-
|Observation.valueQuantity:valueQuantity.value|Death Certificate| Item 4 |Age [years, days, or minutes]|
|Observation.valueQuantity:valueQuantity.value|Vital Records DAM |3.02 Decedent|deathAge|