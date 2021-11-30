package nci.als;

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

public final class transformers

{
	// ---( internal utility methods )---

	final static transformers _instance = new transformers();

	static transformers _newInstance() { return new transformers(); }

	static transformers _cast(Object o) { return (transformers)o; }

	// ---( server methods )---




	public static final void VV2array (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(VV2array)>> ---
		// @sigtype java 3.5
		// [i] field:0:required inString
		// [i] field:0:required delimiter
		// [o] field:1:required stringList
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
			String	inString = IDataUtil.getString( pipelineCursor, "inString" );
			String[] stringList = {"init"};
		
		// pipeline
		if(inString!=null){
			stringList = inString.split("\\|\\|");
		}
		IDataUtil.put( pipelineCursor, "stringList", stringList );
		pipelineCursor.destroy();
		
		
			
		// --- <<IS-END>> ---

                
	}



	public static final void codedDataReplacementRule (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(codedDataReplacementRule)>> ---
		// @sigtype java 3.5
		// [i] field:0:required string
		// [o] field:0:required transformedString
		// pipeline input
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	string = IDataUtil.getString( pipelineCursor, "string" );
		if (string!=null){
			string = string.replaceAll(",", "@@").replaceAll(";", "##");
		
		}
		
		// pipeline output
		IDataUtil.put( pipelineCursor, "transformedString", string );
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}



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



	public static final void replaceSpecialCharacters (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(replaceSpecialCharacters)>> ---
		// @sigtype java 3.5
		// [i] field:0:required inString
		// [o] field:0:required outString
		// pipeline
				IDataCursor pipelineCursor = pipeline.getCursor();
				String	inString = IDataUtil.getString( pipelineCursor, "inString" );
				
				if (inString!=null){
					//inString = inString.replaceAll("\u2122", "TM");
					inString = inString.replaceAll("\u2122", " TM").replaceAll("[^\\w\\xAE\\xA9~. -]", " TM");
				} else if (inString==null) {
					inString = " ";
				}
				// pipeline output
				IDataUtil.put( pipelineCursor, "outString", inString );
				pipelineCursor.destroy();
		
			
		// --- <<IS-END>> ---

                
	}



	public static final void replacementRule (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(replacementRule)>> ---
		// @sigtype java 3.5
		// [i] field:0:required string
		// [i] field:0:required convertToUpper {"false","true"}
		// [o] field:0:required transformedString
		// pipeline input
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	string = IDataUtil.getString( pipelineCursor, "string" );
		boolean convertToUpper = Boolean.parseBoolean(IDataUtil.getString( pipelineCursor, "convertToUpper"));
		if (string!=null){
			string = string.replace(' ', '_').replace(';', '_').replace('/', '_').replace('(', '_').replace('.', '_').replace('-', '_').replace(':',  '_').replace(',', '_').replace('&', '_').replace(')', '_').replaceAll("\u2122", "_TM").replaceAll("[^\\w\\xAE\\xA9~. -]", "_TM");
			if( convertToUpper ){
				string = string.toUpperCase();
			}
		} else if (string==null) {
			string = " ";
		}
		// pipeline output
		IDataUtil.put( pipelineCursor, "transformedString", string );
		pipelineCursor.destroy();
			
			
		// --- <<IS-END>> ---

                
	}



	public static final void versionTransformer (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(versionTransformer)>> ---
		// @sigtype java 3.5
		// [i] field:0:required string
		// [o] field:0:required transformedString
		// pipeline input
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	string = IDataUtil.getString( pipelineCursor, "string" );
		if(string != null) {
			if(string.length()==1){
				string=string+".0";
			}
		}
		
		// pipeline output
		IDataUtil.put( pipelineCursor, "transformedString", string );
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}
}

