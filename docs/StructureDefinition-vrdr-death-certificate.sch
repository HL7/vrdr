<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Composition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Composition</sch:title>
    <sch:rule context="f:Composition">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/vrdr/StructureDefinition/FilingFormat']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/vrdr/StructureDefinition/FilingFormat': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:event) &gt;= 1">event: minimum cardinality of 'event' is 1</sch:assert>
      <sch:assert test="count(f:event) &lt;= 1">event: maximum cardinality of 'event' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Composition/f:event</sch:title>
    <sch:rule context="f:Composition/f:event">
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:detail) &gt;= 1">detail: minimum cardinality of 'detail' is 1</sch:assert>
      <sch:assert test="count(f:detail) &lt;= 1">detail: maximum cardinality of 'detail' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Composition/f:section</sch:title>
    <sch:rule context="f:Composition/f:section">
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
