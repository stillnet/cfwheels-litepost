<h1>Editing bookmark</h1>

<cfoutput>

			#errorMessagesFor("bookmark")#
	
			#startFormTag(action="update", key=params.key)#
		
				
						#textField(objectName='bookmark', property='name', label='Name')#
					
						#textField(objectName='bookmark', property='url', label='Url')#
					
				
				#submitTag()#
				
			#endFormTag()#
			

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
