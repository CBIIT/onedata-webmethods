package nciadmin.projectAutomator;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import com.wm.app.b2b.server.ServerAPI;
import java.util.Properties;
import java.io.InputStream;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.File;
import java.io.IOException;
// --- <<IS-END-IMPORTS>> ---

public final class svc

{
	// ---( internal utility methods )---

	final static svc _instance = new svc();

	static svc _newInstance() { return new svc(); }

	static svc _cast(Object o) { return (svc)o; }

	// ---( server methods )---




	public static final void getPropertyValue (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getPropertyValue)>> ---
		// @sigtype java 3.5
		// [i] field:0:required propertyFileName
		// [i] field:0:required property
		// [o] field:0:required propertyValue
		IDataCursor pipelineCursor = pipeline.getCursor();
		String  propertyFileName = IDataUtil.getString(pipelineCursor,"propertyFileName");
		String	property = IDataUtil.getString( pipelineCursor, "property" );
		try{
			InputStream is = new FileInputStream(propertyFileName);
			Properties prop = new Properties();
			prop.load(is);
			IDataUtil.put( pipelineCursor, "propertyValue", prop.getProperty(property, "") );
			is.close();
		} catch (Exception e){
			//IDataUtil.put( pipelineCursor, "msg", e.toString() );
			throw new ServiceException(e.toString());
		}
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}



	public static final void writeDeployerSpec (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(writeDeployerSpec)>> ---
		// @sigtype java 3.5
		// [i] field:0:required fileName
		// [i] field:0:required data
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	fileName = IDataUtil.getString( pipelineCursor, "fileName" );
		String	data = IDataUtil.getString( pipelineCursor, "data" );
		pipelineCursor.destroy();
		
		String separator = System.getProperty("file.separator");
		int indexSeparator = fileName.lastIndexOf(separator);
		String strPathName = fileName.substring(0,indexSeparator + 1);
		String strFileName = fileName.substring(indexSeparator+1);
		
		FileWriter fw = null;
		try{
			File pathToBeWritten = new File(strPathName);
			if( pathToBeWritten.exists() == false)
				throw new ServiceException("Path " + strPathName + " does not exist!" );
			
			File fileToBeWritten = new File(fileName);
			fw = new FileWriter(fileName,false);
			fw.write(data);
		} catch( Exception e){
			throw new ServiceException(e.getMessage());
		}
		finally{
			try{
				fw.close();
			} catch (Exception e){}
		}
		// pipeline
			
		// --- <<IS-END>> ---

                
	}
}

