package pub;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
// --- <<IS-END-IMPORTS>> ---

public final class NIHstring

{
	// ---( internal utility methods )---

	final static NIHstring _instance = new NIHstring();

	static NIHstring _newInstance() { return new NIHstring(); }

	static NIHstring _cast(Object o) { return (NIHstring)o; }

	// ---( server methods )---




	public static final void contains (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(contains)>> ---
		// @sigtype java 3.5
		// [i] field:0:required inString
		// [i] field:0:required searchString
		// [o] field:0:required contains {"true","false"}
		
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	inString = IDataUtil.getString( pipelineCursor, "inString" );
		String	searchString = IDataUtil.getString( pipelineCursor, "searchString" );
		
		if( inString != null && searchString != null ){
			IDataUtil.put( pipelineCursor, "contains", Boolean.toString(inString.contains(searchString)) );
		}else
			IDataUtil.put( pipelineCursor, "contains", "false" );
		pipelineCursor.destroy();
		// --- <<IS-END>> ---

                
	}



	public static final void lastIndexOf (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(lastIndexOf)>> ---
		// @sigtype java 3.5
		// [i] field:0:required inString
		// [i] field:0:required delim
		// [o] field:0:required value
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	inString = IDataUtil.getString( pipelineCursor, "inString" );
		String delim = IDataUtil.getString( pipelineCursor, "delim" );
		if( inString == null ){
			IDataUtil.put( pipelineCursor, "value", "-1" );
		} else {
			if( delim == null ){
				IDataUtil.put( pipelineCursor, "value", "-1" );
			} else {
				IDataUtil.put( pipelineCursor, "value", Integer.toString(inString.lastIndexOf(delim)) );
			}
		}
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}
}

