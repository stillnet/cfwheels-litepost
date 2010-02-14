<h1>Listing users</h1>

<cftable query="users" colHeaders="true" HTMLTable="true">
	
					<cfcol header="User I D" text="#userID#" />
				
					<cfcol header="First Name" text="#fname#" />
				
					<cfcol header="Last Name" text="#lname#" />
				
					<cfcol header="Email" text="#email#" />
				
					<cfcol header="Username" text="#username#" />
				
					<cfcol header="Password" text="#password#" />
				
					<cfcol header="Role" text="#role#" />
				
	<cfcol header="" text="#linkTo(text='Show', action='show', key=userID)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=userID)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=userID, confirm='Are you sure?')#" />
</cftable>

<cfoutput>
	<p>#linkTo(text="New user", action="new")#</p>
</cfoutput>
