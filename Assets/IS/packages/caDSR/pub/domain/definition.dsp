%include header.dsp%
        <tr>
          <td class="heading" height="20" colspan="3">Definition</td>
	</tr>   	
	</tr>
          <td class="oddrow"><label for="createdBy">createdBy</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="icreatedBy" id="createdBy" class="formFieldSized ">
          </td>
	</tr>
%include datecreated.dsp%
%include datemodified.dsp%
	</tr>
          <td class="oddrow"><label for="id">id</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iid" id="id" class="formFieldSized ">
          </td>
	</tr>
	</tr>
          <td class="oddrow"><label for="languageName">languageName</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ilanguageName" id="languageName" class="formFieldSized ">
          </td>
	</tr>
	</tr>
          <td class="oddrow"><label for="modifiedBy">modifiedBy</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="imodifiedBy" id="modifiedBy" class="formFieldSized ">
          </td>
	</tr>
	</tr>
          <td class="oddrow"><label for="text">text</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="itext" id="text" class="formFieldSized ">
          </td>
	</tr>
	</tr>
          <td class="oddrow"><label for="type">type</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="itype" id="type" class="formFieldSized ">
          </td>
	</tr>
	</tr>
          <td class="oddrow"><label for="searchObj">Search Object</label></td>
          <td class="oddrow-l" width="90%">
	     <select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width90%">
   		<option value="">Please choose</option>
<!--   		<option value="DefinitionClassSchemeItem">definitionClassSchemeItemCollection (gov.nih.nci.cadsr.domain.DefinitionClassSchemeItem)</option>-->
   		<option value="Context">context (gov.nih.nci.cadsr.domain.Context)</option>
   		<option value="Definition">gov.nih.nci.cadsr.domain.Definition</option>
            </select>
          </td>
	</tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="Definition" id="selectedDomain">
%include footer.dsp%
