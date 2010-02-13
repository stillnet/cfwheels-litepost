<h1>Create new bookmark</h1>

<cfoutput>

			#errorMessagesFor("bookmark")#
	
			#startFormTag(action="create")#
		
				
						#textField(objectName='bookmark', property='name', label='Name')#
					
						#textField(objectName='bookmark', property='url', label='Url')#
					

				#submitTag()#
				
			#endFormTag()#
			

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
