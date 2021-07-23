package pub;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import com.wm.lang.ns.NSName;
// --- <<IS-END-IMPORTS>> ---

public final class service

{
	// ---( internal utility methods )---

	final static service _instance = new service();

	static service _newInstance() { return new service(); }

	static service _cast(Object o) { return (service)o; }

	// ---( server methods )---




	public static final void doThread (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(doThread)>> ---
		// @sigtype java 3.5
		// [i] field:0:required service
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	service = IDataUtil.getString( pipelineCursor, "service" );
		
		// pipeline
		try{
			if( service != null){
				IDataUtil.remove(pipelineCursor, "service");
				NSName svc = NSName.create(service);
				Service.doThreadInvoke(svc, pipeline);
			}
		}catch(Exception e){
			IDataUtil.put(pipelineCursor, "error", e.toString());
		}
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}
}

