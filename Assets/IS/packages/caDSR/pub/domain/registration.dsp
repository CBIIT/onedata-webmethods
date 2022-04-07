%include header.dsp%
	<tr>
	  <td class="heading" height="20" colspan="3">Registration</td>
	</tr>
%include begindate.dsp%
	<tr>
          <td class="oddrow" width="90%"><label for="createdBy">createdBy</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="icreatedBy" id="createdBy" class="formFieldSized ">
          </td>
	</tr>
	<tr>
          <td class="oddrow" width="90%"><label for="dataIdentifier">dataIdentifier</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ipublicId" id="dataIdentifier" class="formFieldSized ">
          </td>
	</tr>
%include datecreated.dsp%
%include datemodified.dsp%
%include enddate.dsp%		  
	<tr>
          <td class="oddrow" width="90%"><label for="id">id</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iid" id="id" class="formFieldSized ">
          </td>
	</tr>
	<tr>
          <td class="oddrow" width="90%"><label for="IRDI">IRDI</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iIRDI" id="IRDI" class="formFieldSized ">
          </td>
	</tr>
	<tr>
          <td class="oddrow" width="90%"><label for="lastChange">lastChange</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ilastChange" id="lastChange" class="formFieldSized ">
          </td>
	</tr>
	<tr>
          <td class="oddrow" width="90%"><label for="modifiedBy">modifiedBy</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="imodifiedBy" id="modifiedBy" class="formFieldSized ">
          </td>
	</tr>
	<tr>
          <td class="oddrow" width="90%"><label for="origin">origin</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iorigin" id="origin" class="formFieldSized ">
          </td>
	</tr>
	<tr>
          <td class="oddrow" width="90%"><label for="registrationStatus">registrationStatus</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iregistrationStatus" id="registrationStatus" class="formFieldSized ">
          </td>
	</tr>
	<tr>
          <td class="oddrow" width="90%"><label for="unresolvedIssue">unresolvedIssue</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iunresolvedIssue" id="unresolvedIssue" class="formFieldSized ">
          </td>
	</tr>
	<tr>
          <td class="oddrow" width="90%"><label for="versionIdentifier">versionIdentifier</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iversion" id="versionIdentifier" class="formFieldSized ">
          </td>
	</tr>
	<tr>
          <td class="oddrow" width="90%"><label for="searchObj">Search Object</label></td>
          <td class="oddrow-l" width="90%">
	    <select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width90%">
   		<option value="">Please choose</option>
<!--  		<option value=">registrationAuthority (gov.nih.nci.cadsr.domain.Organization)</option>-->
   		<option value="AdministeredComponent">administeredComponent (gov.nih.nci.cadsr.domain.AdministeredComponent)</option>
   		<option value="AdministeredComponentContact">submitter (gov.nih.nci.cadsr.domain.AdministeredComponentContact)</option>
   		<option value="ReferenceDocument">referenceDocumentsCollection (gov.nih.nci.cadsr.domain.ReferenceDocument)</option>
   		<option value="AdministeredComponentContact">registrar (gov.nih.nci.cadsr.domain.AdministeredComponentContact)</option>
   		<option value="Registration">gov.nih.nci.cadsr.domain.Registration</option>
	    </select>
	  </td>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="Registration" id="selectedDomain">
%include footer.dsp%
