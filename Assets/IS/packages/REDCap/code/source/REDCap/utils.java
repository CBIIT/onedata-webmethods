package REDCap;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.lang.*;
// --- <<IS-END-IMPORTS>> ---

public final class utils

{
	// ---( internal utility methods )---

	final static utils _instance = new utils();

	static utils _newInstance() { return new utils(); }

	static utils _cast(Object o) { return (utils)o; }

	// ---( server methods )---




	public static final void REDCapTextCleaner (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(REDCapTextCleaner)>> ---
		// @sigtype java 3.5
		// [i] field:0:required instring
		// [i] field:0:required convertToUpper {"false","true"}
		// [o] field:0:required outstring
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
			String	instring = IDataUtil.getString( pipelineCursor, "instring" );
			boolean convertToUpper = Boolean.parseBoolean(IDataUtil.getString( pipelineCursor, "convertToUpper"));
			//String	convertToUpper = IDataUtil.getString( pipelineCursor, "convertToUpper" );
			// create regex string to catch trailing spaces
			//.replaceAll("[^\\w\\xAE\\xA9~. -]", "_TM_")
			String regex = "\\s+$";
			
			if (instring!=null) {
				instring = instring.replaceAll("%", "_PR_").replaceAll("\u2122", "_TM_").replaceAll(regex, "").replace(' ', '_').replace(';', '_').replace('/', '_').replace('[','_').replace(']', '_').replace('^', '_').replace('{', '_').replace('}', '_').replace('+', '_').replace('#','_').replace('(', '_').replace('.', '_').replace('-', '_').replace(':', '_').replace(',', '_').replace('&', '_').replace(')', '_').replaceAll("=", "EQ").replaceAll(">", "GT").replaceAll("<", "LT").replaceAll("mol-", "_minus").replaceAll("mol+", "_plus");
			
				if (convertToUpper){
					instring = instring.toUpperCase();
				}
			
			} 	else if (instring==null) {
				instring = " ";
			}
		// pipeline
		
		IDataUtil.put( pipelineCursor, "outstring", instring );
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}



	public static final void checkForApply (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(checkForApply)>> ---
		// @sigtype java 3.5
		// [i] field:0:required string
		// [o] field:0:required contains {"true","false"}
		// pipeline input
		IDataCursor pipelineCursor = pipeline.getCursor();
		String	string = IDataUtil.getString( pipelineCursor, "string" );
		//string = string.toLowerCase();
		Boolean found = false;
		String[] checklist= {"that apply", "code all", "check all", "mark all", "select all", "enter all"};
		Integer counter = 0;
		if( string != null ){
			string = string.toLowerCase();
			while (counter < (checklist.length-1) && found != true) {
				if (string.contains(checklist[counter])) {
					found = true;
				} else {
					counter++;	
				}
			}
		}
		IDataUtil.put( pipelineCursor, "contains", Boolean.toString(found));
		pipelineCursor.destroy();
		// --- <<IS-END>> ---

                
	}



	public static final void createNull (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(createNull)>> ---
		// @sigtype java 3.5
		// pipeline
		String s = null;
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
		IDataUtil.put( pipelineCursor, "null", s );
		pipelineCursor.destroy();
			
		// --- <<IS-END>> ---

                
	}



	public static final void formatChoices (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(formatChoices)>> ---
		// @sigtype java 3.5
		// [i] field:0:required instring
		// [o] field:0:required outstring
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
			String	instring = IDataUtil.getString( pipelineCursor, "instring" );
		
			if (instring!=null) {
				instring = instring.replaceAll("\\.", ", ").replaceAll("\\|\\|", " | ");
				
			} else if (instring==null) {
				instring = " ";
			}
		// pipeline
		
		IDataUtil.put( pipelineCursor, "outstring", instring );
		pipelineCursor.destroy();
		
			
		// --- <<IS-END>> ---

                
	}



	public static final void itemCount (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(itemCount)>> ---
		// @sigtype java 3.5
		// [i] field:0:required inString
		// [i] field:1:required stringArray
		// [o] field:0:required outString
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
			String	inString = IDataUtil.getString( pipelineCursor, "inString" );
			String[]	stringArray = IDataUtil.getStringArray( pipelineCursor, "stringArray" );
			int itemCount = 0;
			int i = 0;
			if (stringArray != null) {
				while (i < stringArray.length){
					if (inString != null) {
					
						if (stringArray[i].equals(inString)) {
		
							itemCount++;
							}
					}
					i++;
				}
			}
		// pipeline
			String outString = String.valueOf(itemCount);
		IDataUtil.put( pipelineCursor, "outString", outString );
		pipelineCursor.destroy();
		
		// -------------------------------------------------------------------------------------------------------------
		
			
		// --- <<IS-END>> ---

                
	}



	public static final void testTextValidationType (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(testTextValidationType)>> ---
		// @sigtype java 3.5
		// [i] field:0:required vd_long_name
		// [o] field:0:required outstring
		// pipeline
		IDataCursor pipelineCursor = pipeline.getCursor();
			String	vd_long_name = IDataUtil.getString( pipelineCursor, "vd_long_name" );
			String txtValType;
		
			if (vd_long_name!= null) {
				vd_long_name = vd_long_name.toLowerCase();
				if (vd_long_name.contains("date")) {
					txtValType="date";
				} else if (vd_long_name.contains("phone")){
					txtValType="phone";
				} else if (vd_long_name.contains("zip code") || vd_long_name.contains("zipcode")){
					txtValType="zipcode";
				} else if (vd_long_name.contains("time")){
					txtValType="time";
				} else if (vd_long_name.contains("number") || vd_long_name.contains("scale") || vd_long_name.contains("score")){
					txtValType="number";
				} else if (vd_long_name.contains("integer")){
					txtValType="integer";
				} else {
					txtValType="text";
				}
			} else {
				txtValType="text";
			}
		
		// pipeline
		IDataUtil.put( pipelineCursor, "outstring", txtValType );
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
				string=string+"_0";
			}
		}
		
		// pipeline output
		IDataUtil.put( pipelineCursor, "transformedString", string );
		pipelineCursor.destroy();
			
			
		// --- <<IS-END>> ---

                
	}
}

