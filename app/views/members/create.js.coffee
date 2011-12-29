$("#members").append("<%= render :partial => 'member_tr', :locals => {:member => @member} %>")
$('#new_member :input')
 .not(':button, :submit, :reset, :hidden')
 .val('')
 .removeAttr('checked')
 .removeAttr('selected');
console.log $('#member_first_name').first()
$('#member_first_name').first().focus()