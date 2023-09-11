package caDSR;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Collections;
// --- <<IS-END-IMPORTS>> ---

public final class utils

{
	// ---( internal utility methods )---

	final static utils _instance = new utils();

	static utils _newInstance() { return new utils(); }

	static utils _cast(Object o) { return (utils)o; }

	// ---( server methods )---




	public static final void checkcriteria (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(checkcriteria)>> ---
		// @sigtype java 3.5
		// [i] field:0:required criteria
		// [o] field:0:required isValid
		// pipeline
		String isValid = "true";
		
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	criteria = IDataUtil.getString( pipelineCursor, "criteria" );
		int firstOpenBrace, lastOpenBrace = 0;
		if( criteria != null ){
			firstOpenBrace = criteria.indexOf('[');
			if( firstOpenBrace > 0 ){
				if( criteria.lastIndexOf(']') != (criteria.length() - 1) ){
					isValid = "false";
				}
			}else
				isValid = "false";
		}else
			isValid = "false";
		
		IDataUtil.put( pipelineCursor, "isValid", isValid );
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}



	public static final void reverseListOrder (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(reverseListOrder)>> ---
		// @sigtype java 3.5
		// [i] field:1:required tables
		// [o] field:1:required tables
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String[]	tables = IDataUtil.getStringArray( pipelineCursor, "tables" );
		
		ArrayList arrayList = new ArrayList( Arrays.asList( tables ) );
		Collections.reverse(arrayList);
		IDataUtil.put( pipelineCursor, "tables", arrayList.toArray(new String[0]) );
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}



	public static final void splitFilterString (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(splitFilterString)>> ---
		// @sigtype java 3.5
		// [i] field:0:required filterString
		// [o] field:1:required filterObjects
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	filterString = IDataUtil.getString( pipelineCursor, "filterString" );
		String[] filterObjects = filterString.split(",@");
		
		for(int i=1;i<filterObjects.length;i++){
			filterObjects[i]="@".concat(filterObjects[i]);
		}
		IDataUtil.put( pipelineCursor, "filterObjects", filterObjects );
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}
}

