%include header.dsp%
        <tr>
          <td class="heading" height="20" colspan="3">ClassSchemeClassSchemeItem</td>
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
          <td class="oddrow"><label for="displayOrder">displayOrder</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="idisplayOrder" id="displayOrder" class="formFieldSized int_long">
          </td>
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
%include deletedindicator.dsp%
        <tr>
          <td class="oddrow"><label for="publicID">publicID</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ipublicId" id="publicID" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="version">version</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iversion" id="version" class="formFieldSized ">
          </td>
        </tr>
        <tr>
        <tr>
          <td class="oddrow"><label for="searchObj">Search Object</label></td>
          <td class="oddrow-l" width="90%">
	    <select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width90%">
		<option value="">Please choose</option>
		<option value="ClassificationScheme">classificationScheme (gov.nih.nci.cadsr.domain.ClassificationScheme)</option>
		<option value="ClassSchemeClassSchemeItem">gov.nih.nci.cadsr.domain.ClassSchemeClassSchemeItem</option>
		<option value="ClassificationSchemeItem">classificationSchemeItem (gov.nih.nci.cadsr.domain.ClassificationSchemeItem)</option>
		<option value="AdministeredComponentClassSchemeItem">administeredComponentClassSchemeItemCollection (gov.nih.nci.cadsr.domain.AdministeredComponentClassSchemeItem)</option>
		<option value="AdministeredComponenetContact">AdministeredComponentContact (gov.nih.nci.cadsr.domain.AdministeredComponentContact)</option>
		<option value="ReferenceDocument">referenceDocumentCollection (gov.nih.nci.cadsr.domain.ReferenceDocument)</option>
	    </select>
          </td>
        </tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="ClassSchemeClassSchemeItem" id="selectedDomain">
%include footer.dsp%
