package caDSRII.utils;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
// --- <<IS-END-IMPORTS>> ---

public final class java

{
	// ---( internal utility methods )---

	final static java _instance = new java();

	static java _newInstance() { return new java(); }

	static java _cast(Object o) { return (java)o; }

	// ---( server methods )---




	public static final void compareStringContent (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(compareStringContent)>> ---
		// @sigtype java 3.5
		// [i] field:0:required inString
		// [i] field:0:required inContent
		// [i] field:0:required inCaseIgnore
		// [o] field:0:required outValue
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	inString = IDataUtil.getString( pipelineCursor, "inString" );
		String	inContent = IDataUtil.getString( pipelineCursor, "inContent" );
		String	inCaseIgnore = IDataUtil.getString( pipelineCursor, "inCaseIgnore" );
		String	outValue = "X";
		
		if (inString == null || inString.isEmpty() || inString.trim().isEmpty())
		   outValue = "false";
		
		if (inContent == null || inContent.isEmpty() || inContent.trim().isEmpty())
		   outValue = "false";
		
		if (inCaseIgnore == null || inCaseIgnore.isEmpty() || inCaseIgnore.trim().isEmpty()|| inCaseIgnore != "false")
			inCaseIgnore = "true";
		
		if (outValue == "X"){
			if (inCaseIgnore == "true") {
				inString = inString.toUpperCase();
			    inContent= inContent.toUpperCase();
			}
			if (inString.contains(inContent))
			    outValue = "true";
			else
				outValue = "false";
		}
			
		
		IDataUtil.put( pipelineCursor, "outValue", outValue);
		pipelineCursor.destroy();
		// --- <<IS-END>> ---

                
	}
}

