package pub;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
// --- <<IS-END-IMPORTS>> ---

public final class odcommon

{
	// ---( internal utility methods )---

	final static odcommon _instance = new odcommon();

	static odcommon _newInstance() { return new odcommon(); }

	static odcommon _cast(Object o) { return (odcommon)o; }

	// ---( server methods )---




	public static final void fixoutput (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(fixoutput)>> ---
		// @sigtype java 3.5
		// [i] record:0:required Untitled
		// [o] record:1:required datarow
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		
			// Untitled
			IData	Untitled = IDataUtil.getIData( pipelineCursor, "Untitled" );
			if ( Untitled != null)
			{
				IDataCursor UntitledCursor = Untitled.getCursor();
		
					// i.datarows
					IData[] datarows = IDataUtil.getIDataArray( UntitledCursor, "datarow" );
					if ( datarows == null)
					{
						datarows = new IData[1];
						datarows[0] = IDataFactory.create();
						IData	doc1 = IDataUtil.getIData(UntitledCursor);
						datarows[0] = IDataFactory.create();
						datarows[0] = doc1;
						UntitledCursor.destroy();
					}
					IDataUtil.put( pipelineCursor, "datarow", datarows );
				UntitledCursor.destroy();
			}
		
		// datarows
		pipelineCursor.destroy();
						
		// --- <<IS-END>> ---

                
	}
}

