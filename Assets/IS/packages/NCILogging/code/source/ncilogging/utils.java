package ncilogging;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import com.wm.app.b2b.server.ServerAPI;
import com.wm.app.b2b.server.LogOutputStream;
// --- <<IS-END-IMPORTS>> ---

public final class utils

{
	// ---( internal utility methods )---

	final static utils _instance = new utils();

	static utils _newInstance() { return new utils(); }

	static utils _cast(Object o) { return (utils)o; }

	// ---( server methods )---




	public static final void Log (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(Log)>> ---
		// @sigtype java 3.5
		// [i] field:0:required function
		// [i] field:0:required Level {"Off","Fatal","Error","Warn","Info","Debug","Trace"}
		// [i] field:0:required message
			// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	function = IDataUtil.getString( pipelineCursor, "function" );
		String	Level = IDataUtil.getString( pipelineCursor, "Level" );
		String	message = IDataUtil.getString( pipelineCursor, "message" );
		
		int tlevel = ELevel.valueOf(Level).ordinal();
		if( (tlevel <= level) && (los != null) && (tlevel != 0))
			los.write("[" + function +  "] " + "[" + Level +  "] " + message);
		
		pipelineCursor.destroy();
		
		// pipeline
			
		// --- <<IS-END>> ---

                
	}



	public static final void close (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(close)>> ---
		// @sigtype java 3.5
		if( los != null )
			los.close();
		// --- <<IS-END>> ---

                
	}



	public static final void getLevel (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getLevel)>> ---
		// @sigtype java 3.5
		// [o] field:0:required Level
		// pipeline
		
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		IDataUtil.put( pipelineCursor, "Level", levelString );
		pipelineCursor.destroy();
		
			
		// --- <<IS-END>> ---

                
	}



	public static final void open (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(open)>> ---
		// @sigtype java 3.5
		// [i] field:0:required filename
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	filename = IDataUtil.getString( pipelineCursor, "filename" );
		pipelineCursor.destroy();
		
		// pipeline
		los=ServerAPI.getLogStream(filename);
		// --- <<IS-END>> ---

                
	}



	public static final void setLevel (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(setLevel)>> ---
		// @sigtype java 3.5
		// [i] field:0:required Level {"Off","Fatal","Error","Warn","Info","Debug","Trace"}
			// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	Level = IDataUtil.getString( pipelineCursor, "Level" );
		pipelineCursor.destroy();
		
		level = ELevel.valueOf(Level).ordinal();
		levelString = Level;
		
		// pipeline
			
		// --- <<IS-END>> ---

                
	}

	// --- <<IS-START-SHARED>> ---
	public static enum ELevel {Off, Fatal, Error, Warn, Info, Debug, Trace};
	public static LogOutputStream los = null;
	public static int level = 4;
	public static String levelString = "Info";
	// --- <<IS-END-SHARED>> ---
}

