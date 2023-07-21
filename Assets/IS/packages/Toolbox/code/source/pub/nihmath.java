package pub;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
// --- <<IS-END-IMPORTS>> ---

public final class nihmath

{
	// ---( internal utility methods )---

	final static nihmath _instance = new nihmath();

	static nihmath _newInstance() { return new nihmath(); }

	static nihmath _cast(Object o) { return (nihmath)o; }

	// ---( server methods )---




	public static final void mod (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(mod)>> ---
		// @sigtype java 3.5
		// [i] field:0:required number
		// [i] field:0:required modulo
		// [o] field:0:required value
		
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		long	number = Long.parseLong(IDataUtil.getString( pipelineCursor, "number" ));
		long	modulo = Long.parseLong(IDataUtil.getString( pipelineCursor, "modulo" ));
		
		// pipeline
		IDataUtil.put( pipelineCursor, "value", Long.toString(number % modulo) );
		pipelineCursor.destroy();
		// --- <<IS-END>> ---

                
	}
}

