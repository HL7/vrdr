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
  <td>91</td>
  <td>Receipt date -- Year</td>
  <td>R_YR</td>
  <td>parameter[receiptDate].value</td>
  <td>date</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>92</td>
  <td>Receipt date -- Month</td>
  <td>R_MO</td>
  <td>parameter[receiptDate].value</td>
  <td>date</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>93</td>
  <td>Receipt date -- Day</td>
  <td>R_DY</td>
  <td>parameter[receiptDate].value</td>
  <td>date</td>
  <td>See <a href='usage.html#partial-dates-and-times'>PartialDatesAndTimes</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>101</td>
  <td>Intentional Reject </td>
  <td>INT_REJ</td>
  <td>parameter[intentionalReject].value</td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-intentional-reject-vs.html'>IntentionalRejectVS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>102</td>
  <td>Acme System Reject Codes</td>
  <td>SYS_REJ</td>
  <td>parameter[acmeSystemReject].value </td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-system-reject-vs.html'>ACMESystemRejectVS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>107</td>
  <td>Transax conversion flag: Computer Generated</td>
  <td>TRX_FLG</td>
  <td>parameter[transaxConversion].value </td>
  <td>codeable</td>
  <td><a href='ValueSet-vrdr-transax-conversion-vs.html'>TransaxConversionVS</a></td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>NA</td>
  <td>coder status </td>
  <td>CS (TRX Field, no IJE Mapping)</td>
  <td>parameter[coderStatus].value</td>
  <td>integer</td>
  <td>-</td>
</tr>
<tr>
  <td style='text-align: center'>Mortality</td>
  <td>NA</td>
  <td>shipment number </td>
  <td>SHIP (TRX Field, no IJE Mapping)</td>
  <td>parameter[shipmentNumber].value</td>
  <td>string</td>
  <td>-</td>
</tr>

</tbody>
</table>

</details>
<p></p>

