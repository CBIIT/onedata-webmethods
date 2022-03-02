package caDSR;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.util.ArrayList;
// --- <<IS-END-IMPORTS>> ---

public final class browser

{
	// ---( internal utility methods )---

	final static browser _instance = new browser();

	static browser _newInstance() { return new browser(); }

	static browser _cast(Object o) { return (browser)o; }

	// ---( server methods )---




	public static final void getInputs (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getInputs)>> ---
		// @sigtype java 3.5
		// [o] recref:1:required inputList caDSR.browser.docs:inputs
		// [o] field:0:required selectedDomain
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		ArrayList<IData> IDataList = new ArrayList<IData>();
		pipelineCursor.first();
		while( pipelineCursor.hasMoreData() ){
			if( pipelineCursor.getKey().startsWith("i") && !pipelineCursor.getValue().equals("")){
				IData inputList = IDataFactory.create();
				IDataCursor inputListCursor = inputList.getCursor();
				IDataUtil.put( inputListCursor, "key", pipelineCursor.getKey().substring(1) );
				IDataUtil.put( inputListCursor, "value", pipelineCursor.getValue() );
				inputListCursor.destroy();
				IDataList.add(inputList);
			}
			pipelineCursor.next();
		}
		if( IDataList.size() > 0 )
			IDataUtil.put( pipelineCursor, "inputList", IDataList.toArray() );
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}
}

