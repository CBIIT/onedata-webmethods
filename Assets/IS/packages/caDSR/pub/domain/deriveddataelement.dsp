%include header.dsp%
	<tr>
		<td class="heading" height="20" colspan="3">DerivedDataElement</td>
	</tr>
	<tr>
		<td class="oddrow"<label for="concatenationCharacter">concatenationCharacter:</label></td>
		<td class="oddrow-l" width="90%">
			<input type="text" name="iconcatenationCharacter" id="concatenationCharacter" class="formFieldSized ">
		</td>
		
	</tr>
	<tr>
		<td class="oddrow"<label for="createdBy">createdBy:</label></td>
		<td class="oddrow-l" width="90%">
			<input type="text" name="icreatedBy" id="createdBy" class="formFieldSized ">
		</td>
		
	</tr>
%include datecreated.dsp%
%include datemodified.dsp%		  
	<tr>
		<td class="oddrow"<label for="publicId">publicId:</label></td>
		<td class="oddrow-l" width="90%">
			<input type="text" name="ipublicId" id="publicId" class="formFieldSized ">
		</td>
	</tr>
	<tr>
		<td class="oddrow"<label for="version">version:</label></td>
		<td class="oddrow-l" width="90%">
			<input type="text" name="iversion" id="version" class="formFieldSized ">
		</td>
	</tr>
	<tr>
		<td class="oddrow"<label for="methods">methods:</label></td>
		<td class="oddrow-l" width="90%">
			<input type="text" name="imethods" id="methods" class="formFieldSized ">
		</td>
	</tr>
	<tr>
		<td class="oddrow"<label for="modifiedBy">modifiedBy:</label></td>
		<td class="oddrow-l" width="90%">
			<input type="text" name="imodifiedBy" id="modifiedBy" class="formFieldSized ">
		</td>
	</tr>
	<tr>
		<td class="oddrow"<label for="rule">rule:</label></td>
		<td class="oddrow-l" width="90%">
			<input type="text" name="irule" id="rule" class="formFieldSized ">
		</td>
	</tr>
	<tr>
		<td class="oddrow"<label for="searchObj">Search Object:</label></td>
		<td class="oddrow-l" width="90%">
			<select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width:90%">
	   			<option value="">Please choose</option>
		   		<option value="DataElement">dataElement (gov.nih.nci.cadsr.domain.DataElement)</option>
			</select>
		</td>
	</tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="DerivedDataElement" id="selectedDomain">
%include footer.dsp%
