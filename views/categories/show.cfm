<h1>Showing category</h1>

<cfoutput>

					<p><label>Category I D</label> <br />
						#category.categoryID#</p>
				
					<p><label>Category</label> <br />
						#category.category#</p>
				

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this category", action="edit", key=category.categoryID)#
</cfoutput>
