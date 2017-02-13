<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<link href="style.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  
  <script>
  $(document).ready(function() {
    $("#datepicker").datepicker();
  });
  </script>
</head>
<body>
<div id="top_links">
  

<div id="header">
	<h1>ROHILLAS - BANK<span class="style1"></span></h1>
   
</div>

<form name="htmlform" method="post" action="html_form_send.php">
<table width="550px">
</tr>
<tr>
 <td valign="top">
  <label for="city">City in which property is based</label>
 </td>
 <td valign="top">
 <select name="City">
 <option value="select">Select</option>
   <option value="Guwahati">Guwahati</option>
  <option value="Alwar">Alwar</option>
  <option value="Jaipur">Jaipur </option>
 </select>
 </td>
</tr>
 
<tr>
 <td valign="top"">
  <label for="Loan Purpose">Purpose of Loan</label>
 </td>
 <td valign="top">
  <select name="Loan Purpose">
  <option value="select">Select</option>
   <option value="p1">Purchase/Construct on identified property</option>
  <option value="p2">Purchase not yet identified property</option>
 </select>
 </td>
</tr>

<tr>
 <td valign="top"">
  <label for="property details">Property Details</label>
 </td>
 <td valign="top">
  <select name="pd">
  <option value="select">Select</option>
   <option value="pd1">Buy already built home/flat</option>
  <option value="pd2">Buy Home/flat that is being built by builder</option>
  <option value="pd2">Construct on a plot of land you  own</option>
  <option value="pd2">Purchase a plot and construct on it</option>
  <option value="pd2">Purchase a plot</option>
 </select>
 </td>
</tr>

<tr>
 <td valign="top">
  <label for="RS">Residency Status</label>
 </td>
 <td valign="top">
 <select name="RS">
  <option value="select">Select</option>
   <option value="rs1">Residency Indian</option>
  <option value="rs2">Non Residency Indian</option>
 </select>
 </td>
 
</tr>

<tr>
 <td valign="top">
  <label for="cost">Total Cost</label>
 </td>
 <td valign="top">
 <input type ="number" name="cost" size="10">
 </td>
 
</tr>

<tr>
 <td valign="top">
  <label for="DOB">Date of Birth</label>
 </td>
 <td valign="top">
  <input id="datepicker" />
 </td>
</tr>


<tr>
 <td valign="top">
  <label for="G">Gender</label>
 </td>
 <td valign="top">
 <select name="G">
  <option value="select">Select</option>
   <option value="rs1">Male</option>
  <option value="rs2">Female</option>
  <option value="rs2">Others</option>
 </select>
 </td>
 
</tr>

<tr>
 <td valign="top">
  <label for="Employment">Type of Employment</label>
 </td>
 <td valign="top">
 <select name="Employment">
  <option value="select">Select</option>
   <option value="e1">Salaried</option>
  <option value="e2">Self Employed Business</option>
  <option value="e3">Self Employed Professional</option>
  <option value="e4">Retired</option>
 </select>
 </td>
</tr>




</table>
</form>

</body>
</html>