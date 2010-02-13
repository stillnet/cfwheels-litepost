<h1>Showing user</h1>

<cfoutput>

					<p><label>User I D</label> <br />
						#user.userID#</p>
				
					<p><label>Fname</label> <br />
						#user.fname#</p>
				
					<p><label>Lname</label> <br />
						#user.lname#</p>
				
					<p><label>Email</label> <br />
						#user.email#</p>
				
					<p><label>Username</label> <br />
						#user.username#</p>
				
					<p><label>Password</label> <br />
						#user.password#</p>
				
					<p><label>Role</label> <br />
						#user.role#</p>
				

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this user", action="edit", key=user.userID)#
</cfoutput>
