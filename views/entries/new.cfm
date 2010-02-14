<h1>Create new entry</h1>

<cfoutput>

			#errorMessagesFor("entry")#
	
			#startFormTag(action="create")#
		
				
						#select(objectName="entry", property="userID", options=users, label="User")#
					
						<!--- #textField(objectName='entry', property='categoryID', label='Category I D')# --->
					
						#textField(objectName='entry', property='title', label='Title')#
					
						#textArea(objectName='entry', property='body', label='Body')#

				#submitTag()#
				
			#endFormTag()#
			

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
