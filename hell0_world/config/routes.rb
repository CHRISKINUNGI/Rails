<% if @user.errors.any? %>
            <div class="alert alert-danger">
                <% @user.errors.full_messages.each do |message| %>
                     <div><%= message %></div>
                <% end %>
            </div>
        <% end %>
