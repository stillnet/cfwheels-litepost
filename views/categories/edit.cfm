<h1>Editing category</h1>

<cfoutput>

			#errorMessagesFor("category")#
	
			#startFormTag(action="update", key=params.key)#
		
				
						#textField(objectName='category', property='category', label='Category')#
					
				
				#submitTag()#
				
			#endFormTag()#
			

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
