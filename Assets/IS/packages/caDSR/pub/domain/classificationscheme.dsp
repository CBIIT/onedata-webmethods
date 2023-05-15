%include header.dsp%
        <tr>
          <td class="heading" height="20" colspan="3">ClassificationScheme</td>
	</tr>	   	
%include begindate.dsp%
        <tr>
          <td class="oddrow"><label for="changeNote">changeNote</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ichangeNote" id="changeNote" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="createdBy">createdBy</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="icreatedBy" id="createdBy" class="formFieldSized ">
          </td>
        </tr>
%include datecreated.dsp%
%include datemodified.dsp%
%include enddate.dsp%
        <tr>
          <td class="oddrow"><label for="id">id</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iid" id="id" class="formFieldSized ">
          </td>
        </tr>
%include latestversionindicator.dsp%
        <tr>
          <td class="oddrow"><label for="longName">longName</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ilongName" id="longName" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="modifiedBy">modifiedBy</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="imodifiedBy" id="modifiedBy" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="origin">origin</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iorigin" id="origin" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="preferredDefinition">preferredDefinition</label></td>
		
          <td class="oddrow-l" width="90%">
            <input type="text" name="ipreferredDefinition" id="preferredDefinition" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="preferredName">preferredName</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ipreferredName" id="preferredName" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="publicID">publicID</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ipublicId" id="publicID" class="formFieldSized int_long">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="registrationStatus">registrationStatus</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iregistrationStatus" id="registrationStatus" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="unresolvedIssue">unresolvedIssue</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iunresolvedIssue" id="unresolvedIssue" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="version">version</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iversion" id="version" class="formFieldSized number">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="workflowStatusDescription">workflowStatusDescription</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iworkflowStatusDescription" id="workflowStatusDescription" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="workflowStatusName">workflowStatusName</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iworkflowStatusName" id="workflowStatusName" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="labelTypeFlag">labelTypeFlag</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ilabelTypeFlag" id="labelTypeFlag" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="type">type</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="itype" id="type" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="searchObj">Search Object</label></td>
          <td class="oddrow-l" width="90%">
	    <select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width90%">
   		<option value="">Please choose</option>
   		<option value="AdministeredComponentContact">administeredComponentContactCollection (gov.nih.nci.cadsr.domain.AdministeredComponentContact)</option>
   		<option value="Registration">registrations (gov.nih.nci.cadsr.domain.Registration)</option>
   		<option value="ClassificationScheme">gov.nih.nci.cadsr.domain.ClassificationScheme</option>
   		<option value="Context">context (gov.nih.nci.cadsr.domain.Context)</option>
   		<option value="Definition">definitionCollection (gov.nih.nci.cadsr.domain.Definition)</option>
   		<option value="AdministeredComponentClassSchemeItem">administeredComponentClassSchemeItemCollection (gov.nih.nci.cadsr.domain.AdministeredComponentClassSchemeItem)</option>
   		<option value="ClassSchemeClassSchemeItem">classSchemeClassSchemeItemCollection (gov.nih.nci.cadsr.domain.ClassSchemeClassSchemeItem)</option>
   		<option value="ReferenceDocument">referenceDocumentCollection (gov.nih.nci.cadsr.domain.ReferenceDocument)</option>
   		<option value="Designation">designationCollection (gov.nih.nci.cadsr.domain.Designation)</option>
                <optin value="DataElement">dataElementCollection (gov.nih.nci.cadsr.domain.DataElement)</option>
            </select>
          </td>
        </tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="ClassificationScheme" id="selectedDomain">
%include footer.dsp%
