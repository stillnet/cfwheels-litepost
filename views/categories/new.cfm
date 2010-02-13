<h1>Create new category</h1>

<cfoutput>

			#errorMessagesFor("category")#
	
			#startFormTag(action="create")#
		
				
						#textField(objectName='category', property='category', label='Category')#
					

				#submitTag()#
				
			#endFormTag()#
			

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
