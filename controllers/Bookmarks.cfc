<cfcomponent extends="Controller" output="false">
	
	<!--- bookmarks/index --->
	<cffunction name="index">
		<cfset bookmarks = model("Bookmark").findAll()>
	</cffunction>
	
	<!--- bookmarks/show/key --->
	<cffunction name="show">
		
		<!--- Find the record --->
    	<cfset bookmark = model("Bookmark").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(bookmark)>
	        <cfset flashInsert(error="Bookmark #params.key# was not found")>
	        <cfset redirectTo(action="index")>
	    </cfif>
			
	</cffunction>
	
	<!--- bookmarks/new --->
	<cffunction name="new">
		<cfset bookmark = model("Bookmark").new()>
	</cffunction>
	
	<!--- bookmarks/edit/key --->
	<cffunction name="edit">
	
		<!--- Find the record --->
    	<cfset bookmark = model("Bookmark").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(bookmark)>
	        <cfset flashInsert(error="Bookmark #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>
		
	</cffunction>
	
	<!--- bookmarks/create --->
	<cffunction name="create">
		<cfset bookmark = model("Bookmark").new(params.bookmark)>
		
		<!--- Verify that the bookmark creates successfully --->
		<cfif bookmark.save()>
			<cfset flashInsert(success="The bookmark was created successfully.")>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the bookmark.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- bookmarks/update --->
	<cffunction name="update">
		<cfset bookmark = model("Bookmark").findByKey(params.key)>
		
		<!--- Verify that the bookmark updates successfully --->
		<cfif bookmark.update(params.bookmark)>
			<cfset flashInsert(success="The bookmark was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the bookmark.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- bookmarks/delete/key --->
	<cffunction name="delete">
		<cfset bookmark = model("Bookmark").findByKey(params.key)>
		
		<!--- Verify that the bookmark deletes successfully --->
		<cfif bookmark.delete()>
			<cfset flashInsert(success="The bookmark was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the bookmark.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>
	
</cfcomponent>
