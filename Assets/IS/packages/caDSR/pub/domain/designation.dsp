%include header.dsp%
        <tr>
          <td class="heading" height="20" colspan="3">Designation</td>
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
		<option value="Designation">gov.nih.nci.cadsr.domain.Designation</option>
<!--		<option value="DesignationClassSchemeItem">designationClassSchemeItemCollection (gov.nih.nci.cadsr.domain.DesignationClassSchemeItem)</option>-->
		<option value="Contxt">context (gov.nih.nci.cadsr.domain.Context)</option>
 	    </select>
          </td>
        </tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="Designation" id="selectedDomain">
%include footer.dsp%
