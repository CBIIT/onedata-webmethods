%include header.dsp%
        <tr>
          <td class="heading" height="20" colspan="3">AdministeredComponent</td>
	</tr>
        <tr>
          <td class="oddrow"><label for="contactRole">contactRole</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="icontactRole" id="contactRole">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="createdBy">createdBy</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="icreatedBy" id="createdBy">
          </td>
        </tr>
%include datecreated.dsp%
%include datemodified.dsp%
        <tr>
          <td class="oddrow"><label for="id">id</label></td>
          <td class="oddrow-l" width="90%">
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
          <td class="oddrow"><label for="rank">rank</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="irank" id="rank">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="searchObj">Search Object</label></td>
          <td class="oddrow-l" width="90%">
	    <select tabindex="100" size="1" name="searchObj" id="searchObj" style="width90%">
		<option value="">Please choose</option>
		<option value="Person">person (gov.nih.nci.cadsr.domain.Person)</option>
		<option value="ClassSchemeClassSchemeItem">classSchemeClassSchemeItem (gov.nih.nci.cadsr.domain.ClassSchemeClassSchemeItem)</option>
		<option value="Registration">registrations (gov.nih.nci.cadsr.domain.Registration)</option>
<!--		<option value="Submission">submissions (gov.nih.nci.cadsr.domain.Registration)</option>-->
		<option value="Organization">organization (gov.nih.nci.cadsr.domain.Organization)</option>
		<option value="AdministeredComponentContact">gov.nih.nci.cadsr.domain.AdministeredComponentContact</option>
	    </select>
	</td>
%include submit.dsp%						   
    <input type="hidden" name="selectedDomain" value="AdministeredComponentContact" id="selectedDomain">
%include footer.dsp
