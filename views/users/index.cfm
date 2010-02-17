<h1>Manage Users</h1>

<cftable query="users" colHeaders="true" HTMLTable="true" border>
	
					<cfcol header="UserID" text="#userID#" />
				
					<cfcol header="First Name" text="#fname#" />
				
					<cfcol header="Last Name" text="#lname#" />
				
					<cfcol header="Email" text="#email#" />
				
					<cfcol header="Username" text="#username#" />
				
	<cfcol header="" text="#linkTo(text='Show', action='show', key=userID)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=userID)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=userID, confirm='Are you sure?')#" />
</cftable>

<cfoutput>
	<p>#linkTo(text="New user", action="new")#</p>
</cfoutput>
