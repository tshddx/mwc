$("#members").append("<%= render :partial => 'member_tr', :locals => {:member => @member} %>")
$('#new_member :input')
 .not(':button, :submit, :reset, :hidden')
 .val('')
 .removeAttr('checked')
 .removeAttr('selected');
