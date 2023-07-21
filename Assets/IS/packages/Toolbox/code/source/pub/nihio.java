package pub;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.io.File;
import java.io.IOException;
import java.io.BufferedWriter;
import java.io.FileWriter;
// --- <<IS-END-IMPORTS>> ---

public final class nihio

{
	// ---( internal utility methods )---

	final static nihio _instance = new nihio();

	static nihio _newInstance() { return new nihio(); }

	static nihio _cast(Object o) { return (nihio)o; }

	// ---( server methods )---




	public static final void createDirectory (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(createDirectory)>> ---
		// @sigtype java 3.5
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	filePath = IDataUtil.getString( pipelineCursor, "filePath" );
		pipelineCursor.destroy();
		if( filePath != null )
			new File(filePath).mkdirs();
		
		// pipeline
		// --- <<IS-END>> ---

                
	}



	public static final void stringToFile (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(stringToFile)>> ---
		// @sigtype java 3.5
		// [i] field:0:required fileName
		// [i] field:0:required string
		// [o] field:0:required success
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	fileName = IDataUtil.getString( pipelineCursor, "fileName" );
		try {
			File file = new  File(fileName);
		
		    // if file doesnt exists, then create it
		    if (!file.exists()) {
		        file.createNewFile();
		    }
		
		    FileWriter fw = new FileWriter(file.getAbsoluteFile());
		    BufferedWriter bw = new BufferedWriter(fw);
		    bw.write(IDataUtil.getString( pipelineCursor,"string" ));
		    bw.close();
		    IDataUtil.put(pipelineCursor, "success", "true");
		  } catch (IOException e) {
			  IDataUtil.put(pipelineCursor, "success", "false");
		}		
		// --- <<IS-END>> ---

                
	}
}

