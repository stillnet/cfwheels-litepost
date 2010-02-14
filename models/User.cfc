<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset hasMany("entries")>
		<cfset validatesPresenceOf(properties="fname",message="First Name can't be empty")>
		<cfset validatesPresenceOf(properties="lname",message="Last Name can't be empty")>
		<cfset validatesPresenceOf(properties="email,username,password")>
		<cfset validatesUniquenessOf(property="email", allowBlank=true)>
		<cfset validate(method="isEmail")>
	</cffunction>

	<cffunction name="IsEmail" access="private">
	    <cfif not IsValid("email", this.email)>
	        <cfset addError(property="email", message="Email address must be a valid email address.")>
	    </cfif>
	</cffunction>

</cfcomponent>
