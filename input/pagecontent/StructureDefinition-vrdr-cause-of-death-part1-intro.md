The <a href='StructureDefinition-vrdr-certifier.html'>Certifier</a> is optionally referenced from this profile (performer).

### IJE Mapping

<style>
 .context-menu {cursor: context-menu; color: #438bca;}
 .context-menu:hover {opacity: 0.5;}
</style>
<details open>

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
  <td>185</td>
  <td>Cause of Death Part I Line a</td>
  <td>COD1A</td>
  <td>value.text,   component[lineNumber] = 1</td>
  <td>string(120)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>186</td>
  <td>Cause of Death Part I Interval, Line a</td>
  <td>INTERVAL1A</td>
  <td>component[interval].value, component[lineNumber] = 1</td>
  <td>string(20)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>187</td>
  <td>Cause of Death Part I Line b</td>
  <td>COD1B</td>
  <td>value.text,   component[lineNumber] = 2</td>
  <td>string(120)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>188</td>
  <td>Cause of Death Part I Interval, Line b</td>
  <td>INTERVAL1B</td>
  <td>component[interval].value, component[lineNumber] = 2</td>
  <td>string(20)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>189</td>
  <td>Cause of Death Part I Line c</td>
  <td>COD1C</td>
  <td>value.text,   component[lineNumber] = 3</td>
  <td>string(120)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>190</td>
  <td>Cause of Death Part I Interval, Line c</td>
  <td>INTERVAL1C</td>
  <td>component[interval].value, component[lineNumber] = 3</td>
  <td>string(20)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>191</td>
  <td>Cause of Death Part I Line d</td>
  <td>COD1D</td>
  <td>value.text,   component[lineNumber] = 4</td>
  <td>string(120)</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>192</td>
  <td>Cause of Death Part I Interval, Line d</td>
  <td>INTERVAL1D</td>
  <td>component[interval].value, component[lineNumber] = 4</td>
  <td>string(20)</td>
  <td>-</td>
</tr>

</tbody>
</table>

</details>
<p></p>


### Form Mapping
<details>

<summary>

<strong class='context-menu' >Form Mapping</strong>

</summary>
<table class='grid'>
<thead>
  <tr>
    <th style='text-align: center'><strong>Item #</strong></th>
    <th><strong>Form Field</strong></th>
    <th><strong>FHIR Profile Field</strong></th>
    <th><strong>Reference</strong></th>
  </tr>
</thead>
<tbody>
<tr>
  <td style='text-align: center'>32Part1</td>
  <td>Cause of Death Line a</td>
  <td>value.text, component[lineNumber] = 1</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>32Part1</td>
  <td>Cause of Death Line b</td>
  <td>value.text, component[lineNumber] = 2</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>32Part1</td>
  <td>Cause of Death Line c</td>
  <td>value.text, component[lineNumber] = 3</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
<tr>
  <td style='text-align: center'>32Part1</td>
  <td>Cause of Death Line d</td>
  <td>value.text, component[lineNumber] = 4</td>
  <td><a href='https://www.cdc.gov/nchs/data/dvs/DEATH11-03final-ACC.pdf'> Certificate of Death</a></td>
</tr>
</tbody>
</table>
