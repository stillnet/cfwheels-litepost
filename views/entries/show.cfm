<h1>Showing entry</h1>

<cfoutput>

					<p><label>Entry I D</label> <br />
						#entry.entryID#</p>
				
					<p><label>User I D</label> <br />
						#entry.userID#</p>
				
					<p><label>Category I D</label> <br />
						#entry.categoryID#</p>
				
					<p><label>Title</label> <br />
						#entry.title#</p>
				
					<p><label>Body</label> <br />
						#entry.body#</p>
				
					<p><label>Date Created</label> <br />
						#entry.createdAt#</p>
				
					<p><label>Date Last Updated</label> <br />
						#entry.updatedAt#</p>
				

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this entry", action="edit", key=entry.entryID)#
</cfoutput>
