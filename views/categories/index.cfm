<h1>Listing categories</h1>

<cftable query="categories" colHeaders="true" HTMLTable="true">
	
					<cfcol header="Category I D" text="#categoryID#" />
				
					<cfcol header="Category" text="#category#" />
				
	<cfcol header="" text="#linkTo(text='Show', action='show', key=categoryID)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=categoryID)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=categoryID, confirm='Are you sure?')#" />
</cftable>

<cfoutput>
	<p>#linkTo(text="New category", action="new")#</p>
</cfoutput>
