<cfcomponent extends="Controller" output="false">
	
	<!--- entries/index --->
	<cffunction name="index">
		<cfset entries = model("Entry").findAll()>
	</cffunction>
	
	<!--- entries/show/key --->
	<cffunction name="show">
		
		<!--- Find the record --->
    	<cfset entry = model("Entry").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(entry)>
	        <cfset flashInsert(error="Entry #params.key# was not found")>
	        <cfset redirectTo(action="index")>
	    </cfif>
			
	</cffunction>
	
	<!--- entries/new --->
	<cffunction name="new">
		<cfset entry = model("Entry").new()>
	</cffunction>
	
	<!--- entries/edit/key --->
	<cffunction name="edit">
	
		<!--- Find the record --->
    	<cfset entry = model("Entry").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(entry)>
	        <cfset flashInsert(error="Entry #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>
		
	</cffunction>
	
	<!--- entries/create --->
	<cffunction name="create">
		<cfset entry = model("Entry").new(params.entry)>
		
		<!--- Verify that the entry creates successfully --->
		<cfif entry.save()>
			<cfset flashInsert(success="The entry was created successfully.")>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the entry.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- entries/update --->
	<cffunction name="update">
		<cfset entry = model("Entry").findByKey(params.key)>
		
		<!--- Verify that the entry updates successfully --->
		<cfif entry.update(params.entry)>
			<cfset flashInsert(success="The entry was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the entry.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- entries/delete/key --->
	<cffunction name="delete">
		<cfset entry = model("Entry").findByKey(params.key)>
		
		<!--- Verify that the entry deletes successfully --->
		<cfif entry.delete()>
			<cfset flashInsert(success="The entry was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the entry.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>
	
</cfcomponent>
