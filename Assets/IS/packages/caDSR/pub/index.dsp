%invoke caDSR.utils:createServerInfo%
<HTML>
  <head>
  </head>
  <body>
<h2>Examples</h2>
<h3>Example 1 - Find Data Element by Public ID and Version</h3>
<p>The following examples find a Data Element where Public Id = 62 and Version=6 and display the basic metadata attributes.Either the CDE Browser or the caDSR REST API can be used to satisfy this query and results from both are shown below.</p>
<pre><a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement[@publicId=62,@version=6]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement[@publicId=62,@version=6]</a>
</pre>

<h3>Example 2 - Find Data Element by Public ID</h3>
<p>The following example finds a Data Element with Public Id = 62, display the basic metadata attributes, version is not known. Since the version is not known, this query can only be handled via a caDSR API query getting all versions.</p><p>The URL for the results from the caDSR API is</p>
<h4>Example 2 URL for Results</h4>
<pre><a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement[@publicId=62]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement[@publicId=62]</a></pre>
<p>Or the query can retrieve only the latest version.</p>
<h4>Example 2</h4>
<a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement[@publicId=62,@latestVersionIndicator=yes]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElelemtn[@publicId=62,@latestVersionIndicator=yes]</a>

<h3>Example 3 - Find Data Element by Public ID, display all related components</h3>
<p>The following example finds a Data Element with Public Id = 62, display all the metadata associated with the Data Element&amp;s related components, not just the basic attributes. This is handled in the caDSR API using a parameter that produces expanded (&quot;heavy&quot;) XML.</p><p>The URL for the results from the API is</p>
<h3>Example 3 URL for Results</h3>
<pre><a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement[@publicId=62]&returnHeavyXML=true" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElelemt[@publicId=62]&returnHeavyXML=true</a></pre>

<h3>Example 4 - Find Data Element Concept using Public ID and display all&nbsp;its associated Data Elements</h3>
<p>Find all the Data Elements associated with the Data Element Concept with Public Id = 2178546, display the basic metadata of the Data Element Concept and its Data Elements.</p>
<p>The URL for the results from the caDSR API is</p>
<a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement&DataElementConcept[@publicId=2178546]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement&DataElementConcept[@publicId=2178546]</a>

<h3>Example 5 - Find Data Elements associated with a particular Data Element Concept public ID and Version</h3>
<p>The following example finds only Data Elements associated with VERSION 2.1 of Data Element Concept with Public Id = 2178546.</p>
<p>The URL for the results from the caDSR is</p>
<a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement&DataElementConcept[@publicId=2178546,@version=2.1]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?DataElement&DataElementConcept[@publicId=2178546,@version=2.1]</a>

<h3>Example 6 - Find a Form using Form public ID and Version and display basic metadata attributes</h3>
<p>The following examples find a Form where Public Id = 2392775 and Version=1.0 and display the basic metadata attributes.</p>


<h4>Example 6a Results displayed in XML</h4>
<p><a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=Form[@publicId=2392775,@version=1]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=Form[@publicId=2392775,@version=1]</a>

<h3>Example 7 - Find a Form using only public ID</h3>
<p>The following example finds a Form with Public Id = 2392775, display the basic metadata attributes, version is not known. Since the version is not known, this query can only be handled via a caDSR API query.</p>
<p>The URL for the results from the caDSR API is</p>
<p><a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=Form[@publicId=2392775]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=Form[@publicId=2392775]</a>

<h3>Example 8 - Find a Form using public ID, display all the metadata associated with the Data Elements</h3>
<p>The following example finds a Form with Public Id = 2392775, display all the metadata associated with the Data Element&amp;s related components, not just the basic attributes. This is handled in the caDSR XML.</p>
<p>The URL for the results from the caDSR API is</p>
<p><a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=Form[@publicId=2392775]&returnHeavyXML=true" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=Form[@publicId=2392775]&returnHeavyXML=true</a>

<h3>Example 9 - Find all the Forms associated with a particular Data Element public ID and version</h3>
<p>The following example finds all the Forms associated with the CDE with Public Id = 2183364, Version 1.0, display the basic metadata of the Form.</p>
<p>The URL for the results from the caDSR API is</p>
<a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=Form,Module,Question&DataElement[@publicId=2178480,@version=1.0]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=Form,Module,Question&DataElement[@publicId=2178480,@version=1.0]</a>


<h3>Example 10 - Get all Modules associated with a Form using Form public ID</h3>
<p>The following example gets all the modules for form with publicID = 2392775.</p>
<p>The URL for the results from the caDSR API is</p>
<a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=Module&Form[@publicId=2392775,@version=1.0]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=Module&Form[@publicId=2392775,@version=1.0]</a>

<h3>Example 11 - Get all the Questions for a Module using Module public ID and version</h3>
<p>The following example gets all the questions for module with publicID = 2392777 and version = 1.0.</p>
<p>The URL for the results from the caDSR API is</p>
<a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=Question&Module[@publicId=2392777,@version=1.0]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=Question&Module[@publicId=2392777,@version=1.0]</a>

<h3>Example 12 - Get all the Data Elements for a Question using Question public ID and version</h3>
<p>The following example gets all the data elements for question with publicID = 2392779 and version = 1.0.</p>
<p>The URL for the results from the caDSR API is</p>
<a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement&Question[@publicId=2392779,@version=1.0]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement&Question[@publicId=2392779,@version=1.0]</a>

<h3>Example 13 - Retrieve all Administered Components associated with a ClassSchemeClassSchemeItem with a particular ID</h3>
<p>The following example gets all Administered Components for ClassSchemeClassSchemeItem with ID = A55C551C-1866-5ED1-E034-080020C9C0E0. This retrieve all AC&amp;s and sort them according to type (Form, DE, DEC, etc.).</p>
<p>The URL for the results from the caDSR API is</p>
<a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=AdministeredComponent,AdministeredComponentClassSchemeItem&ClassSchemeClassSchemeItem[@id=A55C551C-1866-5ED1-E034-080020C9C0E0]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=AdministeredComponent,AdministeredComponentClassSchemeItem&ClassSchemeClassSchemeItem[@id=A55C551C-1866-5ED1-E034-080020C9C0E0]</a>

<h3>Example 14 - Retrieve all ClassSchemeClassSchemeItem associated with a ClassificationSchemeItem and a ClassificationScheme</h3>
<p>The following example gets all <code>ClassSchemeClassSchemeItem</code> for <code>ClassificationSchemeItem</code> with <code>longName</code> starting with 2014r1 and ClassificationScheme with preferredName starting with NMDP.</p>


<h3>Examples 15-17 &nbsp;- Get Data Elements using Concept Code or Concept Name</h3>
<p>Examples 15-17 show how to retrieve data elements using either the concept code or the concept name where the concept is the Primary concept of the related caDSR item. In these examples, results are returned in HTML. All URL&amp;s are using the caDSR API.</p>
<h4>Example 15 - Find all Data Elements where associated concept is the Primary Concept of the Data Element&amp;s Object Class</h4>
<p>This example shows the use of either the Concept Code (C19448) or the Concept Name &quot;Blood and Blood Products&quot;. Results are identical from these two calls, both are returned in XML.</p>
<a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement,DataElementConcept,ObjectClass&ComponentConcept[Concept[@preferredName=C19448],@primaryFlag=Yes]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement,DataElementConcept,ObjectClass&ComponentConcept[Concept[@preferredName=C19448],@primaryFlag=Yes]</a>


<h4>Example 16 - Find all Data Elements where associated concept is the Primary Concept of the Data Element&amp;s Property</h4>
<a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement,DataElementConcept,Property&ComponentConcept[Concept[@preferredName=C42775],@primaryFlag=Yes]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement,DataElementConcept,Property&ComponentConcept[Concept[@preferredName=C42775],@primaryFlag=Yes]</a>

<h4>Example 17 - Find all Data Elements where associated concept is the Primary Concept of one of the Data Element&amp;s Value Domain Value Meanings</h4>
<a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement,ValueDomain,ValueDomainPermissibleValue,PermissibleValue,ValueMeaning&ComponentConcept[Concept[@preferredName=C19448],@primaryFlag=Yes]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=DataElement,ValueDomain,ValueDomainPermissibleValue,PermissibleValue,ValueMeaning&ComponentConcept[Concept[@preferredName=C19448],@primaryFlag=Yes]</a>


<h3>Example 18 - Find All Enumerated Permissible Values for a Data Element</h3>
<p>The following example finds all enumerated permissible values for a data element using the data element&amp;s public ID and version or the data element&ampls public ID (and getting latest version).</p>
<a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=PermissibleValue,ValueDomainPermissibleValue,ValueDomain&DataElement[@publicId=106,@version=5.1]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=PermissibleValue,ValueDomainPermissibleValue,ValueDomain&DataElement[@publicId=106,@version=5.1]</a>


<h3>Example 19 - Find a Concept by Concept Code</h3>
<p>The following example finds a concept with the concept code.</p>
<h4>Example 19</h4>
<a href="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=Concept[@preferredName=C42614]" target="_blank" rel="noopener noreferrer">%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR/GetXML?query=Concept[@preferredName=C42614]</a>

</body>
