%include header.dsp%
        <tr>
          <td class="heading" height="20" colspan="3">ComponentConcept</td>
	</tr>	   	
        <tr>
          <td class="oddrow"><label for="createdBy">createdBy</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="icreatedBy" id="createdBy" class="formFieldSized ">
          </td>
        </tr>
%include datecreated.dsp%
%include datemodified.dsp%
%include deletedindicator.dsp%
        <tr>
          <td class="oddrow"><label for="displayOrder">displayOrder</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="idisplayOrder" id="displayOrder" class="formFieldSized int_long">
          </td>
        </tr>
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
          <td class="oddrow"><label for="publicID">publicID</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="ipublicId" id="publicID" class="formFieldSized int_long">
          </td>
        </tr>
        <tr>
          <td class="oddrow"><label for="version">version</label></td>
          <td class="oddrow-l" width="90%">
            <input type="text" name="iversion" id="version" class="formFieldSized number">
          </td>
        </tr>
%include primaryflag.dsp%
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
<!--		<option value="ComponentLevel">componentlevel (gov.nih.nci.cadsr.domain.ComponentLevel)</option>-->
		<option value="Concept">concept (gov.nih.nci.cadsr.domain.Concept)</option>
		<option value="ComponentConcept">gov.nih.nci.cadsr.domain.ComponentConcept</option>
<!--		<option value="DerivationRule">derivationRule (gov.nih.nci.cadsr.domain.ConceptDerivationRule)</option>-->
	    </select>
          </td>
        %include submit.dsp%

    <input type="hidden" name="iselectedDomain" value="ComponentConcept" id="selectedDomain">

%include footer.dsp%
