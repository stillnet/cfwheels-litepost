<h1>Showing bookmark</h1>

<cfoutput>

					<p><label>Bookmark I D</label> <br />
						#bookmark.bookmarkID#</p>
				
					<p><label>Name</label> <br />
						#bookmark.name#</p>
				
					<p><label>Url</label> <br />
						#bookmark.url#</p>
				

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this bookmark", action="edit", key=bookmark.bookmarkID)#
</cfoutput>
