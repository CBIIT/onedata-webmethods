package pub;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.lang.StringBuffer;
import java.io.ByteArrayOutputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
// --- <<IS-END-IMPORTS>> ---

public final class bytes

{
	// ---( internal utility methods )---

	final static bytes _instance = new bytes();

	static bytes _newInstance() { return new bytes(); }

	static bytes _cast(Object o) { return (bytes)o; }

	// ---( server methods )---




	public static final void toHex (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(toHex)>> ---
		// @sigtype java 3.5
		// [i] object:0:required bytes
		// [o] field:0:required hexString
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		Object	obj = IDataUtil.get( pipelineCursor, "bytes" );
		StringBuffer buf = new StringBuffer();
		ByteArrayOutputStream bos=new ByteArrayOutputStream();
		try{
			ObjectOutputStream oos = new ObjectOutputStream(bos);
			oos.writeObject(obj);
			oos.flush();
			byte [] bytes = bos.toByteArray();
			pipelineCursor.destroy();
			for( int i=0; i< bytes.length; i++){
				buf.append(byteToHex(bytes[i]));
			}
		} catch (Exception e){}
		// pipeline
		IDataCursor pipelineCursor_1 = pipeline.getCursor();
		IDataUtil.put( pipelineCursor_1, "hexString", buf.toString() );
		pipelineCursor_1.destroy();
			
		// --- <<IS-END>> ---

                
	}

	// --- <<IS-START-SHARED>> ---
	public static final String HEX_CHARS = "0123456789ABCDEF";
	
	public static String byteToHex( byte data){
		int hi = (data & 0xF0) >> 4;
	    int lo = (data & 0x0F);
	    return "" + HEX_CHARS.charAt(hi) + HEX_CHARS.charAt(lo);
	}
	// --- <<IS-END-SHARED>> ---
}

