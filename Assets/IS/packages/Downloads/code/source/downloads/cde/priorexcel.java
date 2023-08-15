package downloads.cde;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
// --- <<IS-END-IMPORTS>> ---

public final class priorexcel

{
	// ---( internal utility methods )---

	final static priorexcel _instance = new priorexcel();

	static priorexcel _newInstance() { return new priorexcel(); }

	static priorexcel _cast(Object o) { return (priorexcel)o; }

	// ---( server methods )---




	public static final void create114 (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(create114)>> ---
		// @sigtype java 3.5
		// [i] recref:1:required dataElements downloads.docs:DataElement
		// [i] object:0:required MSSheet
		// [i] field:0:required RAI
		// [o] object:0:required MSSheet
		IDataCursor pipelineCursor = pipeline.getCursor();
		
		// dataElements
		sheet = IDataUtil.get( pipelineCursor, "MSSheet" );
		int rowStart = 1;
		IData[]	dataElements = IDataUtil.getIDataArray( pipelineCursor, "dataElements" );
		if ( dataElements != null)
		{
			for ( int i = 0; i < dataElements.length; i++ ){
				maxRows = 0;
				IDataCursor dataElementsCursor = dataElements[i].getCursor();
				StringToCell(rowStart,0, IDataUtil.getString( dataElementsCursor, "shortname" ) );
				StringToCell(rowStart,1, IDataUtil.getString( dataElementsCursor, "longname" ));
				StringToCell(rowStart,2, IDataUtil.getString( dataElementsCursor, "preferredQuesionText" ));
				StringToCell(rowStart,3, IDataUtil.getString( dataElementsCursor, "preferredDefinition" ));
				StringToCell(rowStart,4, IDataUtil.getString( dataElementsCursor, "version" ));
				StringToCell(rowStart,5, IDataUtil.getString( dataElementsCursor, "contextName" ));
				StringToCell(rowStart,6, IDataUtil.getString( dataElementsCursor, "ContextVersion" ));
				StringToCell(rowStart,7, IDataUtil.getString( dataElementsCursor, "publicId" ));
				StringToCell(rowStart,8, IDataUtil.getString( dataElementsCursor, "WorkflowStatus" ));
				StringToCell(rowStart,9, IDataUtil.getString( dataElementsCursor, "registrationStatus" ));
				StringToCell(rowStart,10, IDataUtil.getString( dataElementsCursor, "beginDate" ));
				StringToCell(rowStart,11, IDataUtil.getString( dataElementsCursor, "source" ));
				IData	concept = IDataUtil.getIData( dataElementsCursor, "concept" );
				if ( concept != null){
					IDataCursor conceptCursor = concept.getCursor();
					StringToCell(rowStart,12, IDataUtil.getString( conceptCursor, "publicId" ));
					StringToCell(rowStart,13, IDataUtil.getString( conceptCursor, "shortName" ));
					StringToCell(rowStart,14, IDataUtil.getString( conceptCursor, "longName" ));
					StringToCell(rowStart,15, IDataUtil.getString( conceptCursor, "version" ));
					StringToCell(rowStart,16, IDataUtil.getString( conceptCursor, "contextName" ));
					StringToCell(rowStart,17, IDataUtil.getString( conceptCursor, "contextVersion" ));
					conceptCursor.destroy();
				}
				StringToCell(rowStart,75, IDataUtil.getString( dataElementsCursor, "derivation_type" ));
				StringToCell(rowStart,76, IDataUtil.getString( dataElementsCursor, "derivation_method" ));
				StringToCell(rowStart,77, IDataUtil.getString( dataElementsCursor, "derivation_rule" ));
				StringToCell(rowStart,78, IDataUtil.getString( dataElementsCursor, "derivation_concat_char" ));
				//ObjectClass
				IData	objectClass = IDataUtil.getIData( dataElementsCursor, "objectClass" );
				if ( objectClass != null){
					IDataCursor objectClassCursor = objectClass.getCursor();
					StringToCell(rowStart,18, IDataUtil.getString( objectClassCursor, "publicId" ));
					StringToCell(rowStart,19, IDataUtil.getString( objectClassCursor, "longName" ));
					StringToCell(rowStart,20, IDataUtil.getString( objectClassCursor, "shortName" ));
					StringToCell(rowStart,21, IDataUtil.getString( objectClassCursor, "contextName" ));
					StringToCell(rowStart,22, IDataUtil.getString( objectClassCursor, "version" ));
					IData[]	concepts = IDataUtil.getIDataArray( objectClassCursor, "concepts" );
					if ( concepts != null){
						OuputConcepts( concepts, rowStart, 23, 0 );
					}
					objectClassCursor.destroy();
				}
				//Property
				IData	property = IDataUtil.getIData( dataElementsCursor, "property" );
				if ( property != null){
					IDataCursor propertyCursor = property.getCursor();
					StringToCell(rowStart,29, IDataUtil.getString( propertyCursor, "publicId" ));
					StringToCell(rowStart,30, IDataUtil.getString( propertyCursor, "longName" ));
					StringToCell(rowStart,31, IDataUtil.getString( propertyCursor, "shortName" ));
					StringToCell(rowStart,32, IDataUtil.getString( propertyCursor, "contextName" ));
					StringToCell(rowStart,33, IDataUtil.getString( propertyCursor, "version" ));
					IData[]	concepts_1 = IDataUtil.getIDataArray( propertyCursor, "concepts" );
					if ( concepts_1 != null){
						OuputConcepts( concepts_1, rowStart, 34, 0 );
					}
					propertyCursor.destroy();
				}
				//ValueDomain
				IData	valueDomain = IDataUtil.getIData( dataElementsCursor, "valueDomain" );
				if ( valueDomain != null){
					IDataCursor valueDomainCursor = valueDomain.getCursor();
					StringToCell(rowStart,40, IDataUtil.getString( valueDomainCursor, "publicId" ));
					StringToCell(rowStart,41, IDataUtil.getString( valueDomainCursor, "shortName" ));
					StringToCell(rowStart,42, IDataUtil.getString( valueDomainCursor, "longName" ));
					StringToCell(rowStart,43, IDataUtil.getString( valueDomainCursor, "version" ));
					StringToCell(rowStart,44, IDataUtil.getString( valueDomainCursor, "contextName" ));
					StringToCell(rowStart,45, IDataUtil.getString( valueDomainCursor, "contextVersion" ));
					StringToCell(rowStart,46, IDataUtil.getString( valueDomainCursor, "Type" ));
					StringToCell(rowStart,47, IDataUtil.getString( valueDomainCursor, "dataType" ));
					StringToCell(rowStart,48, IDataUtil.getString( valueDomainCursor, "minlength" ));
					StringToCell(rowStart,49, IDataUtil.getString( valueDomainCursor, "maxlength" ));
					StringToCell(rowStart,50, IDataUtil.getString( valueDomainCursor, "minValue" ));
					StringToCell(rowStart,51, IDataUtil.getString( valueDomainCursor, "maxValue" ));
					StringToCell(rowStart,52, IDataUtil.getString( valueDomainCursor, "decimalPlace" ));
					StringToCell(rowStart,53, IDataUtil.getString( valueDomainCursor, "format" ));
					StringToCell(rowStart,85, IDataUtil.getString( pipelineCursor, "RAI" ));
					StringToCell(rowStart,86, IDataUtil.getString( pipelineCursor, "RAI" ));
					StringToCell(rowStart,87, IDataUtil.getString( pipelineCursor, "RAI" ));
					StringToCell(rowStart,88, IDataUtil.getString( pipelineCursor, "RAI" ));
					StringToCell(rowStart,89, IDataUtil.getString( pipelineCursor, "RAI" ));
					IData[]	concepts_2 = IDataUtil.getIDataArray( valueDomainCursor, "concepts" );
					if ( concepts_2 != null){
						OuputConcepts( concepts_2, rowStart, 54, 0 );
					}
					IData[]	permissibleValues = IDataUtil.getIDataArray( valueDomainCursor, "permissibleValues" );
					if ( permissibleValues != null)
					{
						for ( int i_5 = 0; i_5 < permissibleValues.length; i_5++ )
						{
							IDataCursor permissibleValuesCursor = permissibleValues[i_5].getCursor();
							StringToCell(rowStart+i_5, 60, IDataUtil.getString( permissibleValuesCursor, "validValue" ));
							StringToCell(rowStart+i_5, 61, IDataUtil.getString( permissibleValuesCursor, "ValueMeaningName" ));
							permissibleValuesCursor.destroy();
						}
						if( maxRows < permissibleValues.length ) maxRows = permissibleValues.length;
					}
					valueDomainCursor.destroy();
				}
				//Classifications
				IData[]	classifications = IDataUtil.getIDataArray( dataElementsCursor, "classifications" );
				if ( classifications != null){
					for ( int i_11 = 0; i_11 < classifications.length; i_11++ )
					{
						IDataCursor classificationsCursor = classifications[i_11].getCursor();
						StringToCell(rowStart+i_11, 62, IDataUtil.getString( classificationsCursor, "schemeShortName" ));
						StringToCell(rowStart+i_11, 63, IDataUtil.getString( classificationsCursor, "schemeVersion" ));
						StringToCell(rowStart+i_11, 64, IDataUtil.getString( classificationsCursor, "schemeContextName" ));
						StringToCell(rowStart+i_11, 65, IDataUtil.getString( classificationsCursor, "schemeContextVersion" ));
						StringToCell(rowStart+i_11, 66, IDataUtil.getString( classificationsCursor, "schemeItemName" ));
						StringToCell(rowStart+i_11, 67, IDataUtil.getString( classificationsCursor, "schemeItemTypeName" ));
						classificationsCursor.destroy();
					}
					if( maxRows < classifications.length ) maxRows = classifications.length;
				}
				//Reference Documents
				IData[]	referenceDocuments = IDataUtil.getIDataArray( dataElementsCursor, "referenceDocuments" );
				if ( referenceDocuments != null){
					for ( int i_10 = 0; i_10 < referenceDocuments.length; i_10++ ){
						IDataCursor referenceDocumentsCursor = referenceDocuments[i_10].getCursor();
						StringToCell(rowStart+i_10, 72, IDataUtil.getString( referenceDocumentsCursor, "document" ));
						StringToCell(rowStart+i_10, 73, IDataUtil.getString( referenceDocumentsCursor, "documentName" ));
						StringToCell(rowStart+i_10, 74, IDataUtil.getString( referenceDocumentsCursor, "documentType" ));
						referenceDocumentsCursor.destroy();
					}
					if( maxRows < referenceDocuments.length ) maxRows = referenceDocuments.length;
				}
				//Alternate Names
				IData[]	alternateNames = IDataUtil.getIDataArray( dataElementsCursor, "alternateNames" );
				if ( alternateNames != null){
					for ( int i_9 = 0; i_9 < alternateNames.length; i_9++ ){
						IDataCursor alternateNamesCursor = alternateNames[i_9].getCursor();
						StringToCell(rowStart+i_9, 68, IDataUtil.getString( alternateNamesCursor, "contextName" ));
						StringToCell(rowStart+i_9, 69, IDataUtil.getString( alternateNamesCursor, "contextVersion" ));
						StringToCell(rowStart+i_9, 70, IDataUtil.getString( alternateNamesCursor, "name" ));
						StringToCell(rowStart+i_9, 71, IDataUtil.getString( alternateNamesCursor, "nameType" ));
						alternateNamesCursor.destroy();
					}
					if( maxRows < alternateNames.length ) maxRows = alternateNames.length;
				}
		
				//Derived DataElements
				IData[]	derivedDataElements = IDataUtil.getIDataArray( dataElementsCursor, "derivedDataElements" );
				if ( derivedDataElements != null){
					for ( int i_12 = 0; i_12 < derivedDataElements.length; i_12++ )	{
						IDataCursor derivedDataElementsCursor = derivedDataElements[i_12].getCursor();
						StringToCell(rowStart+i_12, 79, IDataUtil.getString( derivedDataElementsCursor, "publicId" ));
						StringToCell(rowStart+i_12, 80, IDataUtil.getString( derivedDataElementsCursor, "longName" ));
						StringToCell(rowStart+i_12, 81, IDataUtil.getString( derivedDataElementsCursor, "version" ));
						StringToCell(rowStart+i_12, 82, IDataUtil.getString( derivedDataElementsCursor, "workflowStatus" ));
						StringToCell(rowStart+i_12, 83, IDataUtil.getString( derivedDataElementsCursor, "context" ));
						StringToCell(rowStart+i_12, 84, IDataUtil.getString( derivedDataElementsCursor, "displayOrder" ));
						derivedDataElementsCursor.destroy();
					}
					if( maxRows < derivedDataElements.length ) maxRows = derivedDataElements.length;
				}
				dataElementsCursor.destroy();
				rowStart= rowStart + maxRows + 1;
			}
		}
		IDataUtil.put( pipelineCursor, "MSSheet", sheet );
		
			
		// --- <<IS-END>> ---

                
	}

	// --- <<IS-START-SHARED>> ---
	public static void OuputConcepts( IData[] concepts, int row, int col, int origin){
		for ( int c = 0; c < concepts.length; c++ ){
			IDataCursor conceptsCursor = concepts[c].getCursor();
			StringToCell(row+c, col, IDataUtil.getString( conceptsCursor, "longName" ));
			StringToCell(row+c, col++, IDataUtil.getString( conceptsCursor, "shortName" ));
			StringToCell(row+c, col++, IDataUtil.getString( conceptsCursor, "publicId" ));
			StringToCell(row+c, col++, IDataUtil.getString( conceptsCursor, "definitionSource" ));
			StringToCell(row+c, col++, IDataUtil.getString( conceptsCursor, "evsSource" ));
			StringToCell(row+c, col++, IDataUtil.getString( conceptsCursor, "primaryflag" ));
			if( origin > 0 )
				StringToCell(row+c, origin, IDataUtil.getString( conceptsCursor, "origin" ));
			conceptsCursor.destroy();
		}
		if( maxRows < concepts.length ) maxRows = concepts.length;
	}
	public static void StringToCell( int row, int col, String value ){
		// input
		IData input = IDataFactory.create();
		IDataCursor inputCursor = input.getCursor();
		IDataUtil.put( inputCursor, "MSSheet", sheet );
		IDataUtil.put( inputCursor, "col", col );
		IDataUtil.put( inputCursor, "row", row );
		IDataUtil.put( inputCursor, "Value", value );
		inputCursor.destroy();
	
		// output
		IData 	output = IDataFactory.create();
		try{
			output = Service.doInvoke( "wx.excel.pub.data", "dataStringToCell", input );
		}catch( Exception e){		}
		IDataCursor outputCursor = output.getCursor();
		sheet = IDataUtil.get( outputCursor, "MSSheet" );
		outputCursor.destroy();
	}
	
	public static Object sheet;
	public static int maxRows;
	// --- <<IS-END-SHARED>> ---
}

