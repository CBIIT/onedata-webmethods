%include header.dsp%
        <tr>
          <td class="heading" height="20" colspan="3">Organization</td>
	</tr>			   	
        <tr>
          <td class="oddrow"><label for="createdBy">createdBy</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="icreatedBy" id="createdBy" class="formFieldSized ">
          </td>
        </tr>
%include datecreated.dsp%
%include datemodified.dsp%
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
          <td class="oddrow"><label for="name">name</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iname" id="name" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="rai">rai</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="irai" id="rai" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="searchObj">Search Object</label></td>
          <td class="oddrow-l" width="90%">
	    <select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width90%">
   		<option value="">Please choose</option>
   		<option value="Person">person (gov.nih.nci.cadsr.domain.Person)</option>
   		<option value="Registration">registrations (gov.nih.nci.cadsr.domain.Registration)</option>
   		<option value="Address">addressCollection (gov.nih.nci.cadsr.domain.Address)</option>
   		<option value="Organization">gov.nih.nci.cadsr.domain.Organization</option>
   		<option value="AdministeredComponentContact">administeredComponentContact (gov.nih.nci.cadsr.domain.AdministeredComponentContact)</option>
   		<option value="ContactCommunication">contactCommunication (gov.nih.nci.cadsr.domain.ContactCommunication)</option>
 	    </select>
          </td>
        </tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="Organization" id="selectedDomain">
%include footer.dsp%

