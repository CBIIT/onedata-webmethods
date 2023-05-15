%include header.dsp%
        <tr>
	  <td class="heading" height="20" colspan="3">Context</td>
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
	  <td class="oddrow"><label for="description">description</label></td>
	  <td class="oddrow-l" width="90%">
            <input type="text" name="idescription" id="description">
	  </td>
        </tr>
        <tr>
	  <td class="oddrow"><label for="id">id</label></td>
	  <td class="oddrow-l" width="90%">
            <input type="text" name="iid" id="id">
	  </td>
        </tr>
        <tr>
	  <td class="oddrow"><label for="languageName">languageName</label></td>
	  <td class="oddrow-l" width="90%">
            <input type="text" name="ilanguageName" id="languageName">
	  </td>
        </tr>
        <tr>
	  <td class="oddrow"><label for="modifiedBy">modifiedBy</label></td>
	  <td class="oddrow-l" width="90%">
            <input type="text" name="imodifiedBy" id="modifiedBy">
	  </td>
        </tr>
        <tr>
	  <td class="oddrow"><label for="name">name</label></td>
	  <td class="oddrow-l" width="90%">
            <input type="text" name="ipreferredName" id="name">
	  </td>
        </tr>
        <tr>
	  <td class="oddrow"><label for="version">version</label></td>
	  <td class="oddrow-l" width="90%">
            <input type="text" name="iversion" id="version">
	  </td>
        </tr>
        <tr>
	  <td class="oddrow"><label for="publicID">publicID</label></td>
	  <td class="oddrow-l" width="90%">
            <input type="text" name="ipublicId" id="publicID">
	  </td>
        </tr>
        <tr>
	  <td class="oddrow"><label for="searchObj">Search Object</label></td>
	  <td class="oddrow-l" width="90%">
            <select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width90%">
	      <option value="">Please choose</option>
   	      <option value="Context">gov.nih.nci.cadsr.domain.Context</option>
   	      <option value="AdministeredComponent">administeredComponentCollection (gov.nih.nci.cadsr.domain.AdministeredComponent)</option>
   	      <option value="ReferenceDocument">referenceDocumentCollection (gov.nih.nci.cadsr.domain.ReferenceDocument)</option>
   	      <option value="DataElement">DataElementDocumentCollection (gov.nih.nci.cadsr.domain.DataElement)</option>
   	      <option value="Definition">definitionCollection (gov.nih.nci.cadsr.domain.Definition)</option>
   	      <option value="Designation">designationCollection (gov.nih.nci.cadsr.domain.Designation)</option>
            </select>
          </td>
        </tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="Context" id="selectedDomain">

%include footer.dsp%
