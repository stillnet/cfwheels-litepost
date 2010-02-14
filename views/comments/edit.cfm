<h1>Editing comment</h1>

<cfoutput>

			#errorMessagesFor("comment")#
	
			#startFormTag(action="update", key=params.key)#
		
				
						#textField(objectName='comment', property='entryID', label='Entry I D')#
					
						#textField(objectName='comment', property='comment', label='Comment')#
					
						#textField(objectName='comment', property='name', label='Name')#
					
						#textField(objectName='comment', property='email', label='Email')#
					
						#textField(objectName='comment', property='url', label='Url')#
					
						#dateTimeSelect(objectName='comment', property='createdAt', dateOrder='year,month,day', monthDisplay='abbreviations', label='Date Created')#
					
				
				#submitTag()#
				
			#endFormTag()#
			

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
