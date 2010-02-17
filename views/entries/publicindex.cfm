
<cfoutput query="entries">
<div class="entry">
	<div class="entrytitle">#title#</div>
	<div class="entrydate">#timeAgoInWords(createdAt)# ago</div>
	<div class="entrybody">#body#</div>
	<div class="entrytagline">Created by #fname# #lname# #mailto(email)#</div>
</div>
</cfoutput>
