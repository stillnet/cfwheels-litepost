<h1>Create new user</h1>

<cfoutput>

			#errorMessagesFor("user")#
	
			#startFormTag(action="create")#
		
				
						#textField(objectName='user', property='fname', label='Fname')#
					
						#textField(objectName='user', property='lname', label='Lname')#
					
						#textField(objectName='user', property='email', label='Email')#
					
						#textField(objectName='user', property='username', label='Username')#
					
						#textField(objectName='user', property='password', label='Password')#
					
						#textField(objectName='user', property='role', label='Role')#
					

				#submitTag()#
				
			#endFormTag()#
			

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
