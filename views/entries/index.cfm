<h1>Manage blog entries</h1>

<cftable query="entries" colHeaders="true" HTMLTable="true" border>
	
					<cfcol header="Entry ID" text="#entryID#" />
				
					<cfcol header="User" text="#fname# #lname#" />
				
					<cfcol header="Title" text="#title#" />
				
					<cfcol header="Body" text="#Left(body,10)#..." />
				
					<cfcol header="Date Created" text="#timeAgoInWords(createdAt)# ago" />
					
					<cfif IsDate(updatedAt)>
						<cfcol header="Date Last Updated" text="#timeAgoInWords(updatedAt)# ago" />
					<cfelse>
						<cfcol header="Date Last Updated" text="" />
					</cfif>
					
				
	<cfcol header="" text="#linkTo(text='Show', action='show', key=entryID)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=entryID)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=entryID, confirm='Are you sure?')#" />
</cftable>

<cfoutput>
	<p>#linkTo(text="New entry", action="new")#</p>
</cfoutput>
