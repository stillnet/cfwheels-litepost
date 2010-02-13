<h1>Editing entry</h1>

<cfoutput>

			#errorMessagesFor("entry")#
	
			#startFormTag(action="update", key=params.key)#
		
				
						#textField(objectName='entry', property='userID', label='User I D')#
					
						#textField(objectName='entry', property='categoryID', label='Category I D')#
					
						#textField(objectName='entry', property='title', label='Title')#
					
						#textField(objectName='entry', property='body', label='Body')#
					
						#dateTimeSelect(objectName='entry', property='dateCreated', dateOrder='year,month,day', monthDisplay='abbreviations', label='Date Created')#
					
						#dateTimeSelect(objectName='entry', property='dateLastUpdated', dateOrder='year,month,day', monthDisplay='abbreviations', label='Date Last Updated')#
					
				
				#submitTag()#
				
			#endFormTag()#
			

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
