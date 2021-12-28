package pub;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import com.wm.app.b2b.server.ServerAPI;
import java.util.Properties;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
// --- <<IS-END-IMPORTS>> ---

public final class property

{
	// ---( internal utility methods )---

	final static property _instance = new property();

	static property _newInstance() { return new property(); }

	static property _cast(Object o) { return (property)o; }

	// ---( server methods )---




	public static final void getPropertyValue (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getPropertyValue)>> ---
		// @sigtype java 3.5
		// [i] field:0:required packageName
		// [i] field:0:required propertyFileName
		// [i] field:0:required property
		// [o] field:0:required propertyValue
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	pkgname = IDataUtil.getString( pipelineCursor, "packageName" );
		String  propertyFileName = IDataUtil.getString(pipelineCursor,"propertyFileName");
		String	property = IDataUtil.getString( pipelineCursor, "property" );
		try{
			InputStream is = new FileInputStream(ServerAPI.getPackageConfigDir(pkgname).toString()+"/"+propertyFileName);
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



	public static final void setPropertyValue (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(setPropertyValue)>> ---
		// @sigtype java 3.5
		// [i] field:0:required packageName
		// [i] field:0:required propertyFileName
		// [i] field:0:required property
		// [i] field:0:required propertyValue
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	pkgname = IDataUtil.getString( pipelineCursor, "packageName" );
		String  propertyFileName = IDataUtil.getString(pipelineCursor,"propertyFileName");
		String	property = IDataUtil.getString( pipelineCursor, "property" );
		String  propertyValue = IDataUtil.getString(pipelineCursor, "propertyValue" );
		try{
			InputStream is = new FileInputStream(ServerAPI.getPackageConfigDir(pkgname).toString()+"/"+propertyFileName);
			Properties prop = new Properties();
			prop.load(is);
			is.close();
			OutputStream os = new FileOutputStream(ServerAPI.getPackageConfigDir(pkgname).toString()+"/"+propertyFileName);
			prop.setProperty(property, propertyValue);
			prop.store(os, "");
			os.close();
		} catch (Exception e){
			//IDataUtil.put( pipelineCursor, "msg", e.toString() );
			throw new ServiceException(e.toString());
		}
		pipelineCursor.destroy();
		// --- <<IS-END>> ---

                
	}
}

