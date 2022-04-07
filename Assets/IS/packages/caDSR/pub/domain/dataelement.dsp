%include header.dsp%
      <tr>
	<td class="heading" height="20" colspan="3">DataElement</td>
      </tr>
%include begindate.dsp%
      <tr>
	<td class="oddrow"><label for="createdBy">createdBy</label></td>
	<td class="oddrow-l" width="90%">
		<input type="text" name="icreatedBy" id="createdBy" class="oddrow-lSized ">
	</td>
      </tr>
%include datecreated.dsp%
%include datemodified.dsp%
%include enddate.dsp%
      <tr>
	<td class="oddrow"><label for="id">id</label></td>
	<td class="oddrow-l" width="90%">
		<input type="text" name="iid" id="id" class="oddrow-lSized ">
	</td>
      </tr>
%include latestversionindicator.dsp%
      <tr>
	<td class="oddrow"><label for="longName">longName</label></td>
	<td class="oddrow-l" width="90%">
		<input type="text" name="ilongName" id="longName" class="oddrow-lSized ">
	</td>
      </tr>
      <tr>
	<td class="oddrow"><label for="modifiedBy">modifiedBy</label></td>
	<td class="oddrow-l" width="90%">
		<input type="text" name="imodifiedBy" id="modifiedBy" class="oddrow-lSized ">
	</td>
      </tr>
      <tr>
	<td class="oddrow"><label for="origin">origin</label></td>
	<td class="oddrow-l" width="90%">
		<input type="text" name="iorigin" id="origin" class="oddrow-lSized ">
	</td>
      </tr>
      <tr>
	<td class="oddrow"><label for="preferredDefinition">preferredDefinition</label></td>
	<td class="oddrow-l" width="90%">
		<input type="text" name="ipreferredDefinition" id="preferredDefinition" class="oddrow-lSized ">
	</td>
      </tr>
      <tr>
	<td class="oddrow"><label for="preferredName">preferredName</label></td>
	<td class="oddrow-l" width="90%">
		<input type="text" name="ipreferredName" id="preferredName" class="oddrow-lSized ">
	</td>
      </tr>
      <tr>
	<td class="oddrow"><label for="publicID">publicID</label></td>
	<td class="oddrow-l" width="90%">
		<input type="text" name="ipublicId" id="publicID" class="oddrow-lSized int_long">
	</td>
      </tr>
<!--      <tr>
	<td class="oddrow"><label for="registrationStatus">registrationStatus</label></td>
	<td class="oddrow-l" width="90%">
		<input type="text" name="iregistrationStatus" id="registrationStatus" class="oddrow-lSized ">
	</td>
      </tr>
      <tr>
	<td class="oddrow"><label for="unresolvedIssue">unresolvedIssue</label></td>
	<td class="oddrow-l" width="90%">
		<input type="text" name="iunresolvedIssue" id="unresolvedIssue" class="oddrow-lSized ">
	</td>
      </tr>-->
      <tr>
	<td class="oddrow"><label for="version">version</label></td>
	<td class="oddrow-l" width="90%">
		<input type="text" name="iversion" id="version" class="oddrow-lSized number">
	</td>
      </tr>
<!--      <tr>
	<td class="oddrow"><label for="workflowStatusDescription">workflowStatusDescription</label></td>
	<td class="oddrow-l" width="90%">
		<input type="text" name="iworkflowStatusDescription" id="workflowStatusDescription" class="oddrow-lSized ">
	</td>
      </tr>
      <tr>
	<td class="oddrow"><label for="workflowStatusName">workflowStatusName</label></td>
	<td class="oddrow-l" width="90%">
		<input type="text" name="iworkflowStatusName" id="workflowStatusName" class="oddrow-lSized ">
	</td>
      </tr>-->
      <tr>
	<td class="oddrow"><label for="searchObj">Search Object</label></td>
	<td class="oddrow-l" width="90%">
          <select tabindex="100" class="oddrow-lSized" size="1" name="searchObj" id="searchObj" style="width90%">
	    <option value="">Please choose</option>
<!--	    <option value="ParentDataElementRelationship">parentDataElementRelationshipsCollection (gov.nih.nci.cadsr.domain.DataElementRelationship)</option>-->
	    <option value="AdministeredComponentContact">administeredComponentContactCollection (gov.nih.nci.cadsr.domain.AdministeredComponentContact)</option>
	    <option value="Registration">registrations (gov.nih.nci.cadsr.domain.Registration)</option>
	    <option value="Question">questionCollection (gov.nih.nci.cadsr.domain.Question)</option>
	    <option value="Context">context (gov.nih.nci.cadsr.domain.Context)</option>
	    <option value="Definition">definitionCollection (gov.nih.nci.cadsr.domain.Definition)</option>
	    <option value="DataElementConcept">dataElementConcept (gov.nih.nci.cadsr.domain.DataElementConcept)</option>
	    <option value="AdministeredComponentClassSchemeItem">administeredComponentClassSchemeItemCollection (gov.nih.nci.cadsr.domain.AdministeredComponentClassSchemeItem)</option>
	    <option value="DataElement">gov.nih.nci.cadsr.domain.DataElement</option>
<!--	    <option value="DerivedDataElement">derivedDataElement (gov.nih.nci.cadsr.domain.DerivedDataElement)</option>-->
	    <option value="ChildDataElementRelationship">childDataElementRelationshipsCollection (gov.nih.nci.cadsr.domain.DataElementRelationship)</option>
	    <option value="ReferenceDocument">referenceDocumentCollection (gov.nih.nci.cadsr.domain.ReferenceDocument)</option>
<!--	    <option value="DataElementDerivation">dataElementDerivationCollection (gov.nih.nci.cadsr.domain.DataElementDerivation)</option>-->
	    <option value="ValueDomain">valueDomain (gov.nih.nci.cadsr.domain.ValueDomain)</option>
	    <option value="Designation">designationCollection (gov.nih.nci.cadsr.domain.Designation)</option>
	  </select>
        </td>
      </tr>
%include submit.dsp%
    <input type="hidden" name="selectedDomain" value="DataElement" id="selectedDomain">
%include footer%
