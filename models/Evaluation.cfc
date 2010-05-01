<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset belongsTo(name="speaker")>
	
		<cfset validatesPresenceOf(properties="speakerid,title,name,comments,email")>
        <cfset validatesLengthOf(properties="title,name,comments,email", maximum=45, allowBlank="true")>
        <cfset validatesFormatOf(property="email", type="email", allowBlank="false")>
        
	</cffunction>
	
	<cffunction name="qryComplex">
	
	union
	
	</cffunction>

</cfcomponent>
