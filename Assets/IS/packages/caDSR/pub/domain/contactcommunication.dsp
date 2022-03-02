%include header.dsp%
        <tr>
          <td class="heading" height="20" colspan="3">ContactCommunication</td>
	</tr>	   	
        <tr>
          <td class="oddrow"><label for="createdBy">createdBy</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="icreatedBy" id="createdBy" class="formFieldSized ">
          </td>
        </tr>
%include datecreated.dsp%
%include datemodified.dsp%
        </tr>
        <tr>
          <td class="oddrow"><label for="id">id</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iid" id="id" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="modifiedBy">modifiedBy</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="imodifiedBy" id="modifiedBy" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="rank">rank</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="irank" id="rank" class="formFieldSized int_long">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="type">type</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="itype" id="type" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="value">value</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ivalue" id="value" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="searchObj">Search Object</label></td>
          <td class="oddrow-l" width="90%">
	    <select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width90%">
		<option value="">Please choose</option>
		<option value="Person">person (gov.nih.nci.cadsr.domain.Person)</option>
		<option value="Organization">organization (gov.nih.nci.cadsr.domain.Organization)</option>
		<option value="ContactCommunication">gov.nih.nci.cadsr.domain.ContactCommunication</option>
	    </select>
          </td>
        </tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="ContactCommunication" id="selectedDomain">
%include footer.dsp%
