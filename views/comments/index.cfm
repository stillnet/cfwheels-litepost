<h1>Listing comments</h1>

<cftable query="comments" colHeaders="true" HTMLTable="true">
	
					<cfcol header="Comment I D" text="#commentID#" />
				
					<cfcol header="Entry I D" text="#entryID#" />
				
					<cfcol header="Comment" text="#comment#" />
				
					<cfcol header="Name" text="#name#" />
				
					<cfcol header="Email" text="#email#" />
				
					<cfcol header="Url" text="#url#" />
				
					<cfcol header="Date Created" text="#createdAt#" />
				
	<cfcol header="" text="#linkTo(text='Show', action='show', key=commentID)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=commentID)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=commentID, confirm='Are you sure?')#" />
</cftable>

<cfoutput>
	<p>#linkTo(text="New comment", action="new")#</p>
</cfoutput>
