

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import com.wm.app.b2b.server.ServerAPI;
// --- <<IS-END-IMPORTS>> ---

public final class admin

{
	// ---( internal utility methods )---

	final static admin _instance = new admin();

	static admin _newInstance() { return new admin(); }

	static admin _cast(Object o) { return (admin)o; }

	// ---( server methods )---




	public static final void getHostname (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getHostname)>> ---
		// @sigtype java 3.5
		// [o] field:0:required hostname
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		IDataUtil.put( pipelineCursor, "hostname", ServerAPI.getServerName());
		pipelineCursor.destroy();
		// --- <<IS-END>> ---

                
	}



	public static final void getPackageConfigDir (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getPackageConfigDir)>> ---
		// @sigtype java 3.5
		// [i] field:0:required packageName
		// [o] field:0:required configDir
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	packageName = IDataUtil.getString( pipelineCursor, "packageName" );
		IDataUtil.put( pipelineCursor, "configDir", ServerAPI.getPackageConfigDir(packageName).toString() );
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}
}

