<!--- Place HTML here that should be used as the default layout of your application --->
<html>
	<head>
	<cfoutput>#styleSheetLinkTag("style")#</cfoutput>
	</head>
	<body>
		<div id="header">
			<h1>Litepost</h1>
			<div style="text-align: right;">
				<cfoutput>
					#linkTo(text="Home",route="home")#
					#linkTo(text="Entries",controller="Entries",action="index")#
					#linkTo(text="Users",controller="Users",action="index")#
				</cfoutput>
			</div>
		</div>
		<cfoutput>#contentForLayout()#</cfoutput>
	</body>
</html>