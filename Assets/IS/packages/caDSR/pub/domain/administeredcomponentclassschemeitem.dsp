%include header.dsp%
        <tr>
          <td class="heading" height="20" colspan="3">AdministeredComponentClassSchemeItem</td>
        </tr>
    <input type="hidden" name="ibeginDate" value="" id="selectedDomain">
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
          <td class="oddrow"><label for="searchObj">Search Object</label></td>
          <td class="oddrow-l" width="90%">
            <select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width90%">
   		<option value="">Please choose</option>
		<option value="ClassSchemeClassSchemeItem">classSchemeClassSchemeItem (gov.nih.nci.cadsr.domain.ClassSchemeClassSchemeItem)</option>
		<option value="AdministeredComponent">administeredComponent (gov.nih.nci.cadsr.domain.AdministeredComponent)</option>
		<option value="AdministeredComponentClassSchemeItem">gov.nih.nci.cadsr.domain.AdministeredComponentClassSchemeItem</option>
	    </select>
          </td>
        </tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="AdministeredComponentClassSchemeItem" id="selectedDomain">
%include footer.dsp%
