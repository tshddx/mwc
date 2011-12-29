exists = false
<% if @exists %>
exists = true
<% end %>

link = $("#member-attended-<%= @member_id %>")
link.text(if exists then "yes" else "no")