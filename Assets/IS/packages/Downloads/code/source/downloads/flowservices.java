package downloads;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.util.zip.*;
import java.io.*;
import java.util.*;
import java.util.Enumeration;
import java.util.Vector;
import com.wm.lang.ns.*;
import java.nio.file.attribute.FileTime;
// --- <<IS-END-IMPORTS>> ---

public final class flowservices

{
	// ---( internal utility methods )---

	final static flowservices _instance = new flowservices();

	static flowservices _newInstance() { return new flowservices(); }

	static flowservices _cast(Object o) { return (flowservices)o; }

	// ---( server methods )---




	public static final void getValidValuesMap (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getValidValuesMap)>> ---
		// @sigtype java 3.5
		// [i] record:1:required validValuesInput
		// [i] - field:0:required PERM_VAL_NM
		// [i] - field:0:required ITEM_NM
		// [i] - field:0:required ITEM_DESC
		// [i] - field:0:required ITEM_LONG_NM
		// [i] - field:0:required PERM_VAL_BEG_DT
		// [i] - field:0:required PERM_VAL_END_DT
		// [i] - field:0:required NCI_VAL_MEAN_ITEM_ID
		// [i] - field:0:required NCI_VAL_MEAN_VER_NR
		// [i] - field:0:required ORIGIN_ID_DN
		// [i] - field:0:required NCI_ORD
		// [i] - field:0:required VAL_ID
		// [i] - field:0:required NCI_CNCPT_VAL
		// [o] recref:1:required validValues downloads.docs:validValue
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		Vector<IData> vv = new Vector<IData>();
		Vector<String> vMC = new Vector<String>();
		Vector<String> vMCO = new Vector<String>();
		Vector<String> vMCDO = new Vector<String>();
		//String holdItemNbr = "";
		// validValuesInput
		IData[]	validValuesInput = IDataUtil.getIDataArray( pipelineCursor, "validValuesInput" );
		if ( validValuesInput != null){
			for ( int i = 0; i < validValuesInput.length; i++ )	{
				IDataCursor validValuesInputCursor = validValuesInput[i].getCursor();
				//String	VAL_ID = IDataUtil.getString( validValuesInputCursor, "VAL_ID" );
				String NCI_ORD = IDataUtil.getString( validValuesInputCursor, "NCI_ORD" );
				if( NCI_ORD.equals("0") ){
					vMC.addElement(IDataUtil.getString( validValuesInputCursor, "ITEM_LONG_NM" ));
					vMCO.addElement( IDataUtil.getString( validValuesInputCursor, "ORIGIN_ID_DN" ));
					vMCDO.addElement(NCI_ORD);
					IData validValue = IDataFactory.create();
					IDataCursor validValueCursor = validValue.getCursor();
					IDataUtil.put( validValueCursor, "validValue", htmldecode(IDataUtil.getString( validValuesInputCursor, "PERM_VAL_NM" )) );
					IDataUtil.put( validValueCursor, "ValueMeaningName", htmldecode(IDataUtil.getString( validValuesInputCursor, "ITEM_NM")) );
					IDataUtil.put( validValueCursor, "valueMeaningDescription", htmldecode(IDataUtil.getString( validValuesInputCursor, "ITEM_DESC" )) );
					IDataUtil.put( validValueCursor, "valueMeaningConcepts", vMC.toArray(new String[vMC.size()]) );
					IDataUtil.put( validValueCursor, "pvBeginDate", IDataUtil.getString( validValuesInputCursor, "PERM_VAL_BEG_DT" ) );
					IDataUtil.put( validValueCursor, "pvEndDate", IDataUtil.getString( validValuesInputCursor, "PERM_VAL_END_DT" ) );
					IDataUtil.put( validValueCursor, "valueMeaningpublicId", IDataUtil.getString( validValuesInputCursor, "NCI_VAL_MEAN_ITEM_ID" ) );
					IDataUtil.put( validValueCursor, "valueMeaningversion", IDataUtil.getString( validValuesInputCursor, "NCI_VAL_MEAN_VER_NR" ) );
					IDataUtil.put( validValueCursor, "valueMeaningConceptOrigin", vMCO.toArray(new String[vMCO.size()]) );
					IDataUtil.put( validValueCursor, "valueMeaningConceptDisplayOrder", vMCDO.toArray(new String[vMCDO.size()]) );
					validValueCursor.destroy();
					vv.addElement(validValue);
					vMC.clear();
					vMCO.clear();
					vMCDO.clear();
				} else {
					String ITEM_LONG_NM = IDataUtil.getString( validValuesInputCursor, "ITEM_LONG_NM" );
					if( ITEM_LONG_NM.equals("C45255") ){
						vMC.addElement(ITEM_LONG_NM + "::" + IDataUtil.getString( validValuesInputCursor, "NCI_CNCPT_VAL" ).trim());
					} else {
						vMC.addElement(ITEM_LONG_NM);
					}
					vMCO.addElement(IDataUtil.getString( validValuesInputCursor, "ORIGIN_ID_DN" ));
					vMCDO.addElement(NCI_ORD);
				}
				validValuesInputCursor.destroy();
			}
		}
		IDataUtil.put( pipelineCursor, "validValues", vv.toArray(new IData[vv.size()]) );
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}

	// --- <<IS-START-SHARED>> ---
	
	private static String htmldecode(String inString){
		// input
		if( inString != null ){
			IData input = IDataFactory.create();
			IDataCursor inputCursor = input.getCursor();
			IDataUtil.put( inputCursor, "inString", inString );
			inputCursor.destroy();
		
			// output
			IData 	output = IDataFactory.create();
			try{
				output = Service.doInvoke( "pub.string", "HTMLDecode", input );
			}catch( Exception e){}
			IDataCursor outputCursor = output.getCursor();
			String	value = IDataUtil.getString( outputCursor, "value" );
			outputCursor.destroy();
			return value;
		} else {
			return inString;
		}
	}
		
	// --- <<IS-END-SHARED>> ---
}

