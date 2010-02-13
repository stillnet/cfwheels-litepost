<h1>Listing bookmarks</h1>

<cftable query="bookmarks" colHeaders="true" HTMLTable="true">
	
					<cfcol header="Bookmark I D" text="#bookmarkID#" />
				
					<cfcol header="Name" text="#name#" />
				
					<cfcol header="Url" text="#url#" />
				
	<cfcol header="" text="#linkTo(text='Show', action='show', key=bookmarkID)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=bookmarkID)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=bookmarkID, confirm='Are you sure?')#" />
</cftable>

<cfoutput>
	<p>#linkTo(text="New bookmark", action="new")#</p>
</cfoutput>
