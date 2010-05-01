<cfcomponent extends="Controller" output="false">
	
	<!--- -evaluations/index --->
	<cffunction name="index">
		<cfset evaluations = model("Evaluation").findAll(include="speaker")>
	</cffunction>
	
	<!--- -evaluations/show/key --->
	<cffunction name="show">
		
		<!--- Find the record --->
    	<cfset evaluation = model("Evaluation").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(evaluation)>
	        <cfset flashInsert(error="Evaluation #params.key# was not found")>
	        <cfset redirectTo(action="index")>
	    </cfif>
			
	</cffunction>
	
	<!--- -evaluations/new --->
	<cffunction name="new">
		<cfset evaluation = model("Evaluation").new()>
	</cffunction>
	
	<!--- -evaluations/edit/key --->
	<cffunction name="edit">
	
		<!--- Find the record --->
    	<cfset evaluation = model("Evaluation").findByKey(params.key)>
    	
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(evaluation)>
	        <cfset flashInsert(error="Evaluation #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>
		
	</cffunction>
	
	<!--- -evaluations/create --->
	<cffunction name="create">
		<cfset evaluation = model("Evaluation").new(params.evaluation)>
		
		<!--- Verify that the evaluation creates successfully --->
		<cfif evaluation.save()>
			<cfset flashInsert(success="The evaluation was created successfully.")>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the evaluation.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- -evaluations/update --->
	<cffunction name="update">
		<cfset evaluation = model("Evaluation").findByKey(params.key)>
		    	<cfset speakers = model("Speaker").findAll()>

		<!--- Verify that the evaluation updates successfully --->
		<cfif evaluation.update(params.evaluation)>
			<cfset flashInsert(success="The evaluation was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the evaluation.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- -evaluations/delete/key --->
	<cffunction name="delete">
		<cfset evaluation = model("Evaluation").findByKey(params.key)>
		
		<!--- Verify that the evaluation deletes successfully --->
		<cfif evaluation.delete()>
			<cfset flashInsert(success="The evaluation was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the evaluation.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>
	
</cfcomponent>
