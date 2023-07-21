package pub;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.text.DateFormat;
import java.text.SimpleDateFormat;
// --- <<IS-END-IMPORTS>> ---

public final class nihdate

{
	// ---( internal utility methods )---

	final static nihdate _instance = new nihdate();

	static nihdate _newInstance() { return new nihdate(); }

	static nihdate _cast(Object o) { return (nihdate)o; }

	// ---( server methods )---




	public static final void toDate (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(toDate)>> ---
		// @sigtype java 3.5
		// [i] field:0:required string
		// [o] object:0:required date
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	string = IDataUtil.getString( pipelineCursor, "string" );
		if( string != null ){
			DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			try{
				IDataUtil.put( pipelineCursor, "date", formatter.parse(string) );
			} catch (Exception e){}
		}
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}
}

