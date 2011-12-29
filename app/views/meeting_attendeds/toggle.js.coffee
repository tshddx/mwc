exists = false
<% if @exists %>
exists = true
<% end %>

console.log exists

link = $("#member-attended-<%= @member_id %>")
link.text(if exists then "yes" else "no")