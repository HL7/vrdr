This profile is used to provide the coded Place of Injury.  The Observation.value must provide a value from <a href='ValueSet-vrdr-place-of-injury-vs.html'>PlaceOfInjuryVS</a> which corresponds to the TRX codes provided by NCHS.  In addition, backwards compatibility with the SuperMICAR places of injury is supported with an optional code from the <a href='ValueSet-vrdr-place-of-injury-other-vs.html'>PlaceOfInjuryOtherVS</a> valueset, which corresponds to additional place values.   The SuperMICAR value should only be provided when the coded place is 'Other'.  This backwards compatibility is provided for the convenience of jurisdictions. NCHS does not generate SuperMICAR codes.
### IJE Mapping

<style>
 .context-menu {cursor: context-menu; color: #438bca;}
 .context-menu:hover {opacity: 0.5;}
</style>
<details>

<summary>

<strong class='context-menu'> Mortality (Decedent) </strong>

</summary>
<table class='grid'>
<thead>
  <tr>
    <th style='text-align: center'><strong>Use Case</strong></th>
    <th><strong>#</strong></th>
    <th><strong>Description</strong></th>
    <th><strong>IJE Name</strong></th>
    <th><strong>Field</strong></th>
    <th><strong>Type</strong></th>
    <th><strong>Value Set/Comments</strong></th>
  </tr>
</thead>
<tbody>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>103</td>
  <td>Place of Injury (computer generated)</td>
  <td>INJPL</td>
  <td>value</td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-place-of-injury-vs.html'>PlaceOfInjuryVS</a></td>
</tr>

</tbody>
</table>

</details>
<p></p>

