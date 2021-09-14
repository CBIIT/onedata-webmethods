package pub;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Collections;
// --- <<IS-END-IMPORTS>> ---

public final class excelXML

{
	// ---( internal utility methods )---

	final static excelXML _instance = new excelXML();

	static excelXML _newInstance() { return new excelXML(); }

	static excelXML _cast(Object o) { return (excelXML)o; }

	// ---( server methods )---




	public static final void createDataCell (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(createDataCell)>> ---
		// @sigtype java 3.5
		// [i] recref:0:required row nci.als.docs:row
		// [i] field:0:required dataValue
		// [i] field:0:optional StyleID
		// [o] recref:0:required row nci.als.docs:row
		// [o] recref:0:required Cell nci.als.docs:cell
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		IDataCursor rowCursor = null;
		IData[] Cell = null;
		int newrow = 0;
		// row
		IData	row = IDataUtil.getIData( pipelineCursor, "row" );
		if ( row != null){
			rowCursor = row.getCursor();
			// i.Cell
			Cell = IDataUtil.getIDataArray( rowCursor, "Cell" );
			
		}
		String	dataValue = IDataUtil.getString( pipelineCursor, "dataValue" );
		String	StyleID = IDataUtil.getString( pipelineCursor, "StyleID" );
		if(StyleID == null)
			StyleID = "Default";
		pipelineCursor.destroy();
		
		// row
		if( row == null){
			row = IDataFactory.create();
			rowCursor = row.getCursor();
			Cell = new IData[1];
			Cell[0] = IDataFactory.create();
			newrow = 1;
		}
		IDataUtil.put( rowCursor, "@ss:AutoFitHeight", "1" );
		
		
		// Cell
		IData Celli = IDataFactory.create();
		IDataCursor CelliCursor = Celli.getCursor();
		IDataUtil.put( CelliCursor, "@ss:StyleID", StyleID );
		
		// Cell.Data
		IData celldata = IDataFactory.create();
		IDataCursor celldataCursor = celldata.getCursor();
		IDataUtil.put( celldataCursor, "@ss:Type", "String" );
		IDataUtil.put( celldataCursor, "*body", dataValue );
		celldataCursor.destroy();
		IDataUtil.put( CelliCursor, "Data", celldata );
		CelliCursor.destroy();
		
		//Input Cell as been built
		List<IData> cellList = new ArrayList<IData>(Arrays.asList(Cell));
		if( newrow == 0 )
			cellList.add(Celli);
		else
			cellList.set(0,Celli);
		Cell = (IData[])cellList.toArray(new IData[cellList.size()]);
		IDataUtil.put( rowCursor, "Cell", Cell );
		rowCursor.destroy();
		IDataUtil.put( pipelineCursor, "row", row );
		pipelineCursor.destroy();
		
		
		
		
			
		// --- <<IS-END>> ---

                
	}
}

