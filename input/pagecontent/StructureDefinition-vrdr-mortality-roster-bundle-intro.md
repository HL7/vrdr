### IJE Mapping

<style>
 .context-menu {cursor: context-menu; color: #438bca;}
 .context-menu:hover {opacity: 0.5;}
</style>
<details>

<summary>

<strong class='context-menu'> Mortality Roster </strong>

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
  <td style='text-align: center'>Mortality Roster</td>
  <td>15</td>
  <td>State File Number</td>
  <td>FILENO</td>
  <td>identifier.extension[certificateNumber].value</td>
  <td>string(6)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>33</td>
  <td>Alias Record Flag</td>
  <td>ALIAS</td>
  <td>meta.extension[aliasStatus].value</td>
  <td>boolean</td>
  <td></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>34</td>
  <td>Replacement Record Flag</td>
  <td>REPLACE</td>
  <td>meta.extension[replaceStatus].value</td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-replace-status-vs.html'>ReplaceStatusVS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality Roster</td>
  <td>NA</td>
  <td>Death Record Identifier</td>
  <td>*NO IJE MAPPING*</td>
  <td>identifier.value</td>
  <td>string(12)</td>
  <td>YYYYJJNNNNNN,  YYYY = death year JJ = jurisdiction  and NNNNNN = certificate number</td>
</tr>

</tbody>
</table>

</details>
<p></p>

