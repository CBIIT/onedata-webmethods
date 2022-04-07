%include header.dsp%
        <tr>
          <td class="heading" height="20" colspan="3">TriggerAction</td>
	</tr>	   	
<!--        <tr>
          <td class="oddrow"><label for="action">action</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iaction" id="action" class="formFieldSized ">
          </td>
        </tr>-->
        <tr>
          <td class="oddrow"><label for="createdBy">createdBy</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="icreatedBy" id="createdBy" class="formFieldSized ">
          </td>
        </tr>
<!--        <tr>
          <td class="oddrow"><label for="criterionValue">criterionValue</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="icriterionValue" id="criterionValue" class="formFieldSized ">
          </td>
        </tr>-->
%include datecreated.dsp%
%include datemodified.dsp%
<!--        <tr>
          <td class="oddrow"><label for="forcedValue">forcedValue</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iforcedValue" id="forcedValue" class="formFieldSized ">
          </td>
        </tr>-->
        <tr>
          <td class="oddrow"><label for="id">id</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iid" id="id" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="instruction">instruction</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iinstruction" id="instruction" class="formFieldSized ">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="modifiedBy">modifiedBy</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="imodifiedBy" id="modifiedBy" class="formFieldSized ">
          </td>
<!--        </tr>
        <tr>
          <td class="oddrow"><label for="triggerRelationship">triggerRelationship</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="itriggerRelationship" id="triggerRelationship" class="formFieldSized ">
          </td>
        </tr>-->
        <tr>
          <td class="oddrow"><label for="searchObj">Search Object</label></td>
          <td class="oddrow-l" width="90%">
	    <select tabindex="100" class="formFieldSized" size="1" name="searchObj" id="searchObj" style="width90%">
   		<option value="">Please choose</option>
<!--   		<option value=">questionCondition (gov.nih.nci.cadsr.domain.QuestionCondition)</option>
   		<option>enforcedCondition (gov.nih.nci.cadsr.domain.QuestionCondition)</option>
   		<option>targetFormElement (gov.nih.nci.cadsr.domain.FormElement)</option>
   		<option>sourceFormElement (gov.nih.nci.cadsr.domain.FormElement)</option>-->
   		<option value="AdministeredComponentClassSchemeItem">administeredComponentClassSchemeItemCollection (gov.nih.nci.cadsr.domain.AdministeredComponentClassSchemeItem)</option>
   		<option value="Protocol">protocolCollection (gov.nih.nci.cadsr.domain.Protocol)</option>
   		<option value="TriggerAction">gov.nih.nci.cadsr.domain.TriggerAction</option>
	    </select>
          </td>
        </tr>
        %include submit.dsp%
    <input type="hidden" name="selectedDomain" value="TriggerAction" id="selectedDomain">
%include footer.dsp%
