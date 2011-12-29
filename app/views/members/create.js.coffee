$('#new_member :input')
 .not(':button, :submit, :reset, :hidden')
 .val('')
 .removeAttr('checked')
 .removeAttr('selected');
$('#member_first_name').first().focus()
$("#members").append("""
<%= render :partial => 'member_tr', :locals => {:member => @member} %>
""")
