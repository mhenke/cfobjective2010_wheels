<h1>Create new evaluation</h1>

<cfoutput>

			#errorMessagesFor("evaluation")#
	
			#startFormTag(action="create")#
		
				
						#textField(objectName='evaluation', property='speakerId', label='Speaker Id')#
					
						#textField(objectName='evaluation', property='title', label='Title')#
					
						#textField(objectName='evaluation', property='comments', label='Comments')#
					
						#textField(objectName='evaluation', property='name', label='Name')#
					
						#textField(objectName='evaluation', property='email', label='Email')#
					

				#submitTag()#
				
			#endFormTag()#
			

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
