<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset belongsTo(name="user", foreignKey="userID")>
		<cfset hasMany("comments")>
	</cffunction>

</cfcomponent>
