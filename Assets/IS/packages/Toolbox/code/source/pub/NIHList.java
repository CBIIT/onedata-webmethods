package pub;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.util.List;
import java.util.Arrays;
// --- <<IS-END-IMPORTS>> ---

public final class NIHList

{
	// ---( internal utility methods )---

	final static NIHList _instance = new NIHList();

	static NIHList _newInstance() { return new NIHList(); }

	static NIHList _cast(Object o) { return (NIHList)o; }

	// ---( server methods )---




	public static final void contains (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(contains)>> ---
		// @sigtype java 3.5
		// [i] field:0:required searchString
		// [i] field:0:required masterString
		// [o] field:0:required contains
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	searchString = IDataUtil.getString( pipelineCursor, "searchString" );
		String	masterString = IDataUtil.getString( pipelineCursor, "masterString" );
				
		if( searchString != null && masterString != null){
			List<String> sS = Arrays.asList(searchString.split(",",-1));
			List<String> mS = Arrays.asList(masterString.split(",",-1));
			IDataUtil.put(pipelineCursor, "contains", Boolean.toString(sS.stream().allMatch(mS::contains)));
		}else		
			IDataUtil.put( pipelineCursor, "contains", "false" );
		pipelineCursor.destroy();
		// --- <<IS-END>> ---

                
	}
}

