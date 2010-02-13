<h1>Listing entries</h1>

<cftable query="entries" colHeaders="true" HTMLTable="true">
	
					<cfcol header="Entry I D" text="#entryID#" />
				
					<cfcol header="User I D" text="#userID#" />
				
					<cfcol header="Category I D" text="#categoryID#" />
				
					<cfcol header="Title" text="#title#" />
				
					<cfcol header="Body" text="#body#" />
				
					<cfcol header="Date Created" text="#dateCreated#" />
				
					<cfcol header="Date Last Updated" text="#dateLastUpdated#" />
				
	<cfcol header="" text="#linkTo(text='Show', action='show', key=entryID)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=entryID)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=entryID, confirm='Are you sure?')#" />
</cftable>

<cfoutput>
	<p>#linkTo(text="New entry", action="new")#</p>
</cfoutput>
