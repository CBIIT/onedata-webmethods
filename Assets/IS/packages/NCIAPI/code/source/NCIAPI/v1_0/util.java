package NCIAPI.v1_0;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import com.wm.data.IData;
import com.wm.data.IDataCursor;
import com.wm.data.IDataUtil;
// --- <<IS-END-IMPORTS>> ---

public final class util

{
	// ---( internal utility methods )---

	final static util _instance = new util();

	static util _newInstance() { return new util(); }

	static util _cast(Object o) { return (util)o; }

	// ---( server methods )---




	public static final void getFirstRegexMatch (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getFirstRegexMatch)>> ---
		// @sigtype java 3.5
		// [i] field:0:required inputString
		// [i] field:0:required regexPattern
		// [o] field:0:required matchString
		IDataCursor pipelineCursor = pipeline.getCursor(); 
		
		String inputString = IDataUtil.getString( pipelineCursor, "inputString" );
		String regexPattern = IDataUtil.getString( pipelineCursor, "regexPattern" );
		
		String matchString = null;
		
		Pattern pattern = Pattern.compile(regexPattern);
		Matcher matcher = pattern.matcher(inputString);
		
		while (matcher.find()) {
			matchString = matcher.group(0);
		}
		
		// pipeline
		IDataUtil.put( pipelineCursor, "matchString", matchString );
		// --- <<IS-END>> ---

                
	}
}

