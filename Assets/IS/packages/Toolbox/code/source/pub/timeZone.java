package pub;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.util.TimeZone;
// --- <<IS-END-IMPORTS>> ---

public final class timeZone

{
	// ---( internal utility methods )---

	final static timeZone _instance = new timeZone();

	static timeZone _newInstance() { return new timeZone(); }

	static timeZone _cast(Object o) { return (timeZone)o; }

	// ---( server methods )---




	public static final void getAvailableIDs (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getAvailableIDs)>> ---
		// @sigtype java 3.5
		// [o] field:1:required ids
		
		// pipeline
		
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String[]	ids = new String[1];
		ids[0] = "ids";
		IDataUtil.put( pipelineCursor, "ids", TimeZone.getAvailableIDs() );
		pipelineCursor.destroy();
		// --- <<IS-END>> ---

                
	}
}

