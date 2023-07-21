package NCIFTP;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.io.File;
import java.io.IOException;
import java.io.BufferedWriter;
import java.io.FileWriter;
// --- <<IS-END-IMPORTS>> ---

public final class utils

{
	// ---( internal utility methods )---

	final static utils _instance = new utils();

	static utils _newInstance() { return new utils(); }

	static utils _cast(Object o) { return (utils)o; }

	// ---( server methods )---




	public static final void removeFiles (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(removeFiles)>> ---
		// @sigtype java 3.5
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	filePath = IDataUtil.getString( pipelineCursor, "filePath" );
		String zipFileName = IDataUtil.getString( pipelineCursor, "zipFileName");
		File file = new File(filePath);
		File zipFile = new File(zipFileName);
		pipelineCursor.destroy();
		
		if( filePath != null )
			for (File subFile : file.listFiles()) {
		            subFile.delete();
		         }
		
		if( zipFileName != null)
			zipFile.delete();
		      
		
			
		// --- <<IS-END>> ---

                
	}
}

