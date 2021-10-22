package nci.als;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.lang.*;
// --- <<IS-END-IMPORTS>> ---

public final class utils

{
	// ---( internal utility methods )---

	final static utils _instance = new utils();

	static utils _newInstance() { return new utils(); }

	static utils _cast(Object o) { return (utils)o; }

	// ---( server methods )---




	public static final void checkForApply (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(checkForApply)>> ---
		// @sigtype java 3.5
		// [i] field:0:required string
		// [o] field:0:required contains {"true","false"}
		// pipeline input
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	string = IDataUtil.getString( pipelineCursor, "string" );
		//string = string.toLowerCase();
		Boolean found = false;
		String[] checklist= {"that apply", "code all", "check all", "mark all", "select all", "enter all"};
		Integer counter = 0;
		if( string != null ){
			string = string.toLowerCase();
			while (counter < (checklist.length-1) && found != true) {
				if (string.contains(checklist[counter])) {
					found = true;
				} else {
					counter++;	
				}
			}
		}
		IDataUtil.put( pipelineCursor, "contains", Boolean.toString(found));
		pipelineCursor.destroy();
		// --- <<IS-END>> ---

                
	}



	public static final void itemCount (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(itemCount)>> ---
		// @sigtype java 3.5
		// [i] field:0:required inString
		// [i] field:1:required stringArray
		// [o] field:0:required outString
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
			String	inString = IDataUtil.getString( pipelineCursor, "inString" );
			String[]	stringArray = IDataUtil.getStringArray( pipelineCursor, "stringArray" );
			int itemCount = 0;
			int i = 0;
			if (stringArray != null) {
				while (i < stringArray.length){
					if (inString != null) {
					
						if (stringArray[i].equals(inString)) {
		
							itemCount++;
							}
					}
					i++;
				}
			}
		// pipeline
			String outString = String.valueOf(itemCount);
		IDataUtil.put( pipelineCursor, "outString", outString );
		pipelineCursor.destroy();
		
		// -------------------------------------------------------------------------------------------------------------
		
			
		// --- <<IS-END>> ---

                
	}
}

