package nciadmin;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.util.zip.*;
import java.io.*;
import java.util.*;
import java.util.Enumeration;
import java.util.Vector;
import com.wm.lang.ns.*;
import java.nio.file.attribute.FileTime;
// --- <<IS-END-IMPORTS>> ---

public final class tools

{
	// ---( internal utility methods )---

	final static tools _instance = new tools();

	static tools _newInstance() { return new tools(); }

	static tools _cast(Object o) { return (tools)o; }

	// ---( server methods )---




	public static final void calltop (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(calltop)>> ---
		// @sigtype java 3.5
		// [o] field:1:required output
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		Vector<String> vector = new Vector<String>();
				 
		try {
		    Process process = Runtime.getRuntime().exec(new String[]{"/bin/sh","-c", "for i in {1..1};do date; top -b -o +%MEM | head -n 17;sleep 5;done"});
		 
		    BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
		    String line;
		    while ((line = reader.readLine()) != null) {
		        vector.add(line);
		    }
		 
		    reader.close();
		 
		} catch (IOException e) {
		    vector.add( e.toString() );
		}
		
		//IDataCursor pipelineCursor = pipeline.getCursor();
		IDataUtil.put( pipelineCursor, "output", vector.toArray(new String[vector.size()]) );
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}



	public static final void free (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(free)>> ---
		// @sigtype java 3.5
		// [o] field:1:required output
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		Vector<String> vector = new Vector<String>();
				 
		try {
		    Process process = Runtime.getRuntime().exec(new String[]{"/bin/sh","-c", "free -h"});
		 
		    BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
		    String line;
		    while ((line = reader.readLine()) != null) {
		        vector.add(line);
		    }
		 
		    reader.close();
		 
		} catch (IOException e) {
		    vector.add( e.toString() );
		}
		
		//IDataCursor pipelineCursor = pipeline.getCursor();
		IDataUtil.put( pipelineCursor, "output", vector.toArray(new String[vector.size()]) );
		pipelineCursor.destroy();
		// --- <<IS-END>> ---

                
	}



	public static final void ps (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(ps)>> ---
		// @sigtype java 3.5
		// [o] field:1:required output
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		Vector<String> vector = new Vector<String>();
				 
		try {
		    Process process = Runtime.getRuntime().exec(new String[]{"/bin/sh","-c", "ps -fu saguser | grep -v \"ps -fu saguser\""});
		 
		    BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
		    String line;
		    while ((line = reader.readLine()) != null) {
		        vector.add(line);
		    }
		 
		    reader.close();
		 
		} catch (IOException e) {
		    vector.add( e.toString() );
		}
		
		//IDataCursor pipelineCursor = pipeline.getCursor();
		IDataUtil.put( pipelineCursor, "output", vector.toArray(new String[vector.size()]) );
		pipelineCursor.destroy();
		// --- <<IS-END>> ---

                
	}



	public static final void uptime (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(uptime)>> ---
		// @sigtype java 3.5
		// [o] field:1:required output
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		Vector<String> vector = new Vector<String>();
				 
		try {
		    Process process = Runtime.getRuntime().exec(new String[]{"/bin/sh","-c", "uptime"});
		 
		    BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
		    String line;
		    while ((line = reader.readLine()) != null) {
		        vector.add(line);
		    }
		 
		    reader.close();
		 
		} catch (IOException e) {
		    vector.add( e.toString() );
		}
		
		//IDataCursor pipelineCursor = pipeline.getCursor();
		IDataUtil.put( pipelineCursor, "output", vector.toArray(new String[vector.size()]) );
		pipelineCursor.destroy();
		// --- <<IS-END>> ---

                
	}



	public static final void vmstat (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(vmstat)>> ---
		// @sigtype java 3.5
		// [o] field:1:required output
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		Vector<String> vector = new Vector<String>();
				 
		try {
		    Process process = Runtime.getRuntime().exec(new String[]{"/bin/sh","-c", "vmstat -s"});
		 
		    BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
		    String line;
		    while ((line = reader.readLine()) != null) {
		        vector.add(line);
		    }
		 
		    reader.close();
		 
		} catch (IOException e) {
		    vector.add( e.toString() );
		}
		
		//IDataCursor pipelineCursor = pipeline.getCursor();
		IDataUtil.put( pipelineCursor, "output", vector.toArray(new String[vector.size()]) );
		pipelineCursor.destroy();
		// --- <<IS-END>> ---

                
	}
}

