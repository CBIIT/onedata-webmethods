package FormDownload.utils;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
// --- <<IS-END-IMPORTS>> ---

public final class string

{
	// ---( internal utility methods )---

	final static string _instance = new string();

	static string _newInstance() { return new string(); }

	static string _cast(Object o) { return (string)o; }

	// ---( server methods )---




	public static final void appendHeader (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(appendHeader)>> ---
		// @sigtype java 3.5
		// [i] field:1:required protocolList
		// [o] field:0:required headerString
		IDataCursor cursor = pipeline.getCursor();
		String [] protocolList = IDataUtil.getStringArray(cursor, "protocolList");
		String firstHeaders = "Long Name,Definition,Context";
		String lastHeaders = ",Workflow,Type,caDSR RAI,Public ID,Version,Header Instruction,Footer Instruction";
		StringBuffer headerString = new StringBuffer();
		headerString.append(firstHeaders);
		for (int i=0; i<protocolList.length ; i++)
		{
			headerString.append(",Protocol Long Name");
		}
		headerString.append(lastHeaders);
		IDataUtil.put(cursor,  "headerString",  headerString.toString());
		cursor.destroy();
		// --- <<IS-END>> ---

                
	}
}
