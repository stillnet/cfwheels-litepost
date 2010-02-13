<cfcomponent extends="Controller" output="false">
	
	<!--- users/index --->
	<cffunction name="index">
		<cfset users = model("User").findAll()>
	</cffunction>
	
	<!--- users/show/key --->
	<cffunction name="show">
		
		<!--- Find the record --->
    	<cfset user = model("User").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(user)>
	        <cfset flashInsert(error="User #params.key# was not found")>
	        <cfset redirectTo(action="index")>
	    </cfif>
			
	</cffunction>
	
	<!--- users/new --->
	<cffunction name="new">
		<cfset user = model("User").new()>
	</cffunction>
	
	<!--- users/edit/key --->
	<cffunction name="edit">
	
		<!--- Find the record --->
    	<cfset user = model("User").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(user)>
	        <cfset flashInsert(error="User #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>
		
	</cffunction>
	
	<!--- users/create --->
	<cffunction name="create">
		<cfset user = model("User").new(params.user)>
		
		<!--- Verify that the user creates successfully --->
		<cfif user.save()>
			<cfset flashInsert(success="The user was created successfully.")>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the user.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- users/update --->
	<cffunction name="update">
		<cfset user = model("User").findByKey(params.key)>
		
		<!--- Verify that the user updates successfully --->
		<cfif user.update(params.user)>
			<cfset flashInsert(success="The user was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the user.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- users/delete/key --->
	<cffunction name="delete">
		<cfset user = model("User").findByKey(params.key)>
		
		<!--- Verify that the user deletes successfully --->
		<cfif user.delete()>
			<cfset flashInsert(success="The user was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the user.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>
	
</cfcomponent>
