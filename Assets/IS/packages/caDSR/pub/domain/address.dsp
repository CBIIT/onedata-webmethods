%include header.dsp%
    <tr>
      <td class="heading" height="20" colspan="3">Address</td>
    </tr>
    <tr valign="top">
      <td class="oddrow"><label for="addressLine1">addressLine1</label></td>
      <td class="oddrow-l" width="90%">
         <input type="text" name="iaddressLine1" id="addressLine1">
      </td>
    </tr>
    <tr valign="top">
	<td class="evenrow"><label for="addressLine2">addressLine2</label></td>
	<td class="evenrow-1" width="90%">
 	<input type="text" name="iaddressLine2" id="addressLine2">
	</td>
    </tr>
    <tr valign="top">
	<td class="oddrow"><label for="city">city</label></td>
	<td class="oddrow-l" width="90%">
	<input type="text" name="icity" id="city">
	</td>
    </tr>
    <tr valign="top">
    	<td class="evenrow"><label for="country">country</label></td>
	<td class="evenrow-l" width="90%">
	<input type="text" name="icountry" id="country">
	</td>
    </tr>
    <tr valign="top">
	<td class="oddrow"><label for="createdBy">createdBy</label></td>
	<td class="oddrow-l" width="90%">
	<input type="text" name="icreatedBy" id="createdBy">
	</td>
    </tr>
%include datecreated.dsp%
%include datemodified.dsp%
    <tr>
	<td class="evenrow"><label for="id">id</label></td>
	<td class="evenrow-l" width="90%">
	<input type="text" name="iid" id="id">
    	</td>
    </tr>
    <tr>
	<td class="oddrow"><label for="modifiedBy">modifiedBy</label></td>
	<td class="oddrow-l" width="90%">
	<input type="text" name="imodifiedBy" id="modifiedBy">
	</td>
    </tr>
    <tr>
	<td class="evenrow"><label for="postalCode">postalCode</label></td>
	<td class="evenrow-l" width="90%">
	<input type="text" name="ipostalCode" id="postalCode">
	</td>
    </tr>
    <tr>
	<td class="oddrow"><label for="rank">rank</label></td>
	<td class="oddrow-l" width="90%">
	<input type="text" name="irank" id="rank">
	</td>
    </tr>
    <tr>
	<td class="evenrow"><label for="state">state</label></td>
	<td class="evenrow-l" width="90%">
	<input type="text" name="istate" id="state">
        </td>
    </tr>
    <tr>
	<td class="oddrow"><label for="type">type</label></td>
	<td class="oddrow-l" width="90%">
	<input type="text" name="itype" id="type">
	</td>
    </tr>
    <tr>
	<td class="evenrow"><label for="searchObj">Search Object</label></td>
	<td class="evenrow-l" width="90%">
	    <select tabindex="100" size="1" name="searchObj" id="searchObj" style="width:90%">
	        <option value="">Please choose</option>
		<option value="Address">Address</option>
		<option value="Person">Person</option>
		<option value="Organization">Organization</option>
	    </select>
 	</td>
    </tr>
%include submit.dsp%
  <input type="hidden" name="selectedDomain" value="Address" id="selectedDomain">  
%include footer.dsp%
