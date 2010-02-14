<h1>Showing comment</h1>

<cfoutput>

					<p><label>Comment I D</label> <br />
						#comment.commentID#</p>
				
					<p><label>Entry I D</label> <br />
						#comment.entryID#</p>
				
					<p><label>Comment</label> <br />
						#comment.comment#</p>
				
					<p><label>Name</label> <br />
						#comment.name#</p>
				
					<p><label>Email</label> <br />
						#comment.email#</p>
				
					<p><label>Url</label> <br />
						#comment.url#</p>
				
					<p><label>Date Created</label> <br />
						#comment.createdAt#</p>
				

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this comment", action="edit", key=comment.commentID)#
</cfoutput>
