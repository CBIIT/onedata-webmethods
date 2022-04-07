%include header.dsp%
	<tr>
	  <td class="heading" height="20" colspan="3">QuestionRepetition</td>
	</tr>	   	
	<tr>
          <td class="oddrow"><label for="defaultValue">defaultValue</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="idefaultValue" id="defaultValue" class="formFieldSized ">
          </td>
	</tr>
%include iseditable.dsp%
	<tr>
          <td class="oddrow"><label for="id">id</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iid" id="id" class="formFieldSized ">
          </td>
	</tr>
%include iseditable.dsp%
	<tr>
          <td class="oddrow"><label for="repeatSequenceNumber">repeatSequenceNumber</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="irepeatSequenceNumber" id="repeatSequenceNumber" class="formFieldSized int_long">
          </td>
	</tr>
	<tr>
          <td class="oddrow"><label for="searchObj">Search Object</label></td>
          <td class="oddrow-l" width="90%">
	    <select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width90%">
   		<option value="">Please choose</option>
  		<option value="QuestionRepetition">gov.nih.nci.cadsr.domain.QuestionRepetition</option>
   		<option value="ValidValue">defaultValidValue (gov.nih.nci.cadsr.domain.ValidValue)</option>
	    </select>
          </td>
	</tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="QuestionRepetition" id="selectedDomain">
%include footer.dsp%
