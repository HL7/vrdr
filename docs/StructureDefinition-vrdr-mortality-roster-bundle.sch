<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Bundle
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Bundle</sch:title>
    <sch:rule context="f:Bundle">
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:meta</sch:title>
    <sch:rule context="f:Bundle/f:meta">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/vrdr/StructureDefinition/AliasStatus']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/vrdr/StructureDefinition/AliasStatus': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:versionId) &lt;= 1">versionId: maximum cardinality of 'versionId' is 1</sch:assert>
      <sch:assert test="count(f:lastUpdated) &lt;= 1">lastUpdated: maximum cardinality of 'lastUpdated' is 1</sch:assert>
      <sch:assert test="count(f:source) &lt;= 1">source: maximum cardinality of 'source' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:identifier</sch:title>
    <sch:rule context="f:Bundle/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/CertificateNumber']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/CertificateNumber': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier1']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier1': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier2']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier2': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:entry</sch:title>
    <sch:rule context="f:Bundle/f:entry">
      <sch:assert test="count(f:resource) &gt;= 1">resource: minimum cardinality of 'resource' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
