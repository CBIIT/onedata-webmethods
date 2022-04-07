%include header.dsp%
	<tr>
	  <td class="heading" height="20" colspan="3">ReferenceDocument</td>
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
          <td class="oddrow"><label for="doctext">doctext</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="idoctext" id="doctext" class="formFieldSized ">
          </td>
	</tr>
	<tr>
          <td class="oddrow"><label for="id">id</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iid" id="id" class="formFieldSized ">
          </td>
	</tr>
	<tr>
          <td class="oddrow"><label for="languageName">languageName</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ilanguageName" id="languageName" class="formFieldSized ">
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
          <td class="oddrow"><label for="organizationId">organizationId</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iorganizationId" id="organizationId" class="formFieldSized ">
          </td>
	</tr>
<!--	<tr>
          <td class="oddrow"><label for="rdtlName">rdtlName</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="irdtlName" id="rdtlName" class="formFieldSized ">
          </td>
	</tr>-->
	<tr>
          <td class="oddrow"><label for="type">type</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="itype" id="type" class="formFieldSized ">
          </td>
	</tr>
	<tr>
          <td class="oddrow"><label for="URL">URL</label></td>
          <td class="oddrow-l" width="90%">
	    <input type="text" name="iURL" id="URL" class="formFieldSized ">
          </td>
	</tr>
	<tr>
          <td class="oddrow"><label for="searchObj">Search Object</label></td>
          <td class="oddrow-l" width="90%">
            <select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width90%">
   		<option value="">Please choose</option>
   		<option value="ClassSchemeClassSchemeItem">classSchemeClassSchemeItem (gov.nih.nci.cadsr.domain.ClassSchemeClassSchemeItem)</option>
   		<option value="ReferenceDocument">gov.nih.nci.cadsr.domain.ReferenceDocument</option>
   		<option value="Registration">registration (gov.nih.nci.cadsr.domain.Registration)</option>
   		<option value="Context">context (gov.nih.nci.cadsr.domain.Context)</option>
   		<option value="Attachements">attachments (gov.nih.nci.cadsr.domain.ReferenceDocumentAttachment)</option>
	    </select>
	  </td>
	</tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="ReferenceDocument" id="selectedDomain">
%include footer.dsp%
