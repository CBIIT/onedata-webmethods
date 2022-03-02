%include header.dsp%
        <tr>
          <td class="heading" height="20" colspan="3">PermissibleValue</td>
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
          <td class="oddrow"><label for="highValueNumber">highValueNumber</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ihighValueNumber" id="highValueNumber" class="formFieldSized int_long">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="id">id</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iid" id="id" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="lowValueNumber">lowValueNumber</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ilowValueNumber" id="lowValueNumber" class="formFieldSized int_long">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="modifiedBy">modifiedBy</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="imodifiedBy" id="modifiedBy" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="value">value</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ivalue" id="value" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="searchObj">Search Object</label></td>
          <td class="oddrow-l" width="90%">
            <select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width90%">
   		<option value="">Please choose</option>
   		<option value="ValueDomainPermissibleValue">valueDomainPermissibleValueCollection (gov.nih.nci.cadsr.domain.ValueDomainPermissibleValue)</option>
   		<option value="PermissibleValue">gov.nih.nci.cadsr.domain.PermissibleValue</option>
   		<option value="ValueMeaning">valueMeaning (gov.nih.nci.cadsr.domain.ValueMeaning)</option>
	    </select>
          </td>
        </tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="PermissibleValue" id="selectedDomain">
%include footer.dsp%
