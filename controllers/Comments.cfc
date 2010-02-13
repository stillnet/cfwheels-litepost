<cfcomponent extends="Controller" output="false">
	
	<!--- comments/index --->
	<cffunction name="index">
		<cfset comments = model("Comment").findAll()>
	</cffunction>
	
	<!--- comments/show/key --->
	<cffunction name="show">
		
		<!--- Find the record --->
    	<cfset comment = model("Comment").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(comment)>
	        <cfset flashInsert(error="Comment #params.key# was not found")>
	        <cfset redirectTo(action="index")>
	    </cfif>
			
	</cffunction>
	
	<!--- comments/new --->
	<cffunction name="new">
		<cfset comment = model("Comment").new()>
	</cffunction>
	
	<!--- comments/edit/key --->
	<cffunction name="edit">
	
		<!--- Find the record --->
    	<cfset comment = model("Comment").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(comment)>
	        <cfset flashInsert(error="Comment #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>
		
	</cffunction>
	
	<!--- comments/create --->
	<cffunction name="create">
		<cfset comment = model("Comment").new(params.comment)>
		
		<!--- Verify that the comment creates successfully --->
		<cfif comment.save()>
			<cfset flashInsert(success="The comment was created successfully.")>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the comment.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- comments/update --->
	<cffunction name="update">
		<cfset comment = model("Comment").findByKey(params.key)>
		
		<!--- Verify that the comment updates successfully --->
		<cfif comment.update(params.comment)>
			<cfset flashInsert(success="The comment was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the comment.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- comments/delete/key --->
	<cffunction name="delete">
		<cfset comment = model("Comment").findByKey(params.key)>
		
		<!--- Verify that the comment deletes successfully --->
		<cfif comment.delete()>
			<cfset flashInsert(success="The comment was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the comment.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>
	
</cfcomponent>
