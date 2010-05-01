<h1>Showing evaluation</h1>

<cfoutput>

					<p><label>Id</label> <br />
						#evaluation.id#</p>
				
					<p><label>Speaker Id</label> <br />
						#evaluation.speakerId#</p>
				
					<p><label>Title</label> <br />
						#evaluation.title#</p>
				
					<p><label>Comments</label> <br />
						#evaluation.comments#</p>
				
					<p><label>Name</label> <br />
						#evaluation.name#</p>
				
					<p><label>Email</label> <br />
						#evaluation.email#</p>
				

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this evaluation", action="edit", key=evaluation.id)#
</cfoutput>
