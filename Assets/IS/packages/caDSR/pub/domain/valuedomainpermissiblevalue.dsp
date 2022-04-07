%include header.dsp%
        <tr>
          <td class="heading" height="20" colspan="3">VAlueDomainPermissibleValue</td>
	</tr>	   	
%include begindate.dsp%
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
          <td class="oddrow"><label for="searchObj">Search Object</label></td>
          <td class="oddrow-l" width="90%">
	    <select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width90%">
   		<option value="">Please choose</option>
   		<option value="ValidValue">validValueCollection (gov.nih.nci.cadsr.domain.ValidValue)</option>
   		<option value="Concept">concept (gov.nih.nci.cadsr.domain.Concept)</option>
   		<option value="ValueDomainPermissibleValue">gov.nih.nci.cadsr.domain.ValueDomainPermissibleValue</option>
   		<option value="PermissibleValue">permissibleValue (gov.nih.nci.cadsr.domain.PermissibleValue)</option>
   		<option value="ValueDomain">enumeratedValueDomain (gov.nih.nci.cadsr.domain.EnumeratedValueDomain)</option>
	    </select>
          </td>
        </tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="ValueDomainPermissibleValue" id="selectedDomain">
%include footer.dsp%
