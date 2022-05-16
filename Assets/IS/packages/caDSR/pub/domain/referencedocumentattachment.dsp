%include header.dsp%
	<tr>
		<td class="heading" height="20" colspan="3">ReferenceDocumentAttachment</td>
	</tr>
	<tr>
	  <td class="oddrow" align="right"><label for="createdBy">createdBy</label></td>
	  <td class="oddrow-l"" width="90%">
        	<input type="text" name="icreatedBy" id="createdBy" class="formFieldSized ">
	  </td>
	</tr>
%include datecreated.dsp%		  
%include datemodified.dsp%		  
	<tr>
	  <td class="oddrow" align="right"><label for="id">id</label></td>
	  <td class="oddrow-l"" width="90%">
		<input type="text" name="iid" id="id" class="formFieldSized ">
	  </td>
	</tr>
	<tr>
	  <td class="oddrow" align="right"><label for="mimeType">mimeType</label></td>
	  <td class="oddrow-l"" width="90%">
		<input type="text" name="imimeType" id="mimeType" class="formFieldSized ">
	  </td>
	</tr>
	<tr>
	  <td class="oddrow" align="right"><label for="modifiedBy">modifiedBy</label></td>
	  <td class="oddrow-l"" width="90%">
		<input type="text" name="imodifiedBy" id="modifiedBy" class="formFieldSized ">
	  </td>
	</tr>
	<tr>
	  <td class="oddrow" align="right"><label for="name">name</label></td>
	  <td class="oddrow-l"" width="90%">
		<input type="text" name="iname" id="name" class="formFieldSized ">
	  </td>
	</tr>
	<tr>
	  <td class="oddrow" align="right"><label for="size">size</label></td>
	  <td class="oddrow-l"" width="90%">
		<input type="text" name="isize" id="size" class="formFieldSized int_long">
	  </td>
	</tr>
	<tr>
	  <td class="oddrow" align="right"><label for="searchObj">Search Object</label></td>
	  <td class="oddrow-l"" width="90%">
		<select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width90%">
			<option value="">Please choose</option>
	   		<option value="ReferenceDocument">referenceDocument (gov.nih.nci.cadsr.domain.ReferenceDocument)</option>
		</select>
	  </td>
	</tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="ReferenceDocumentAttachment" id="selectedDomain">
%include footer.dsp%
