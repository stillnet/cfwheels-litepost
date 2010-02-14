<h1>Editing entry</h1>

<cfoutput>

			#errorMessagesFor("entry")#
	
			#startFormTag(action="update", key=params.key)#
		
				
						#select(objectName="entry", property="userID", options=users, label="User")#
					
						<!--- #textField(objectName='entry', property='categoryID', label='Category I D')# --->
					
						#textField(objectName='entry', property='title', label='Title')#
					
						#textArea(objectName='entry', property='body', label='Body')#					
				
				#submitTag()#
				
			#endFormTag()#
			

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
