<div>
  <% @peeps.each do |peep| %>
    <tr>
      <h1><td><%= tweet.user.email %></td></h1>
      <h2><td><%= tweet.body %></td></h2>
      <h3><td><%= tweet.created_at %></td></h3>
    </tr>
  <% end %>
</div>
 
<%= link_to 'New Tweet', new_tweet_path(@user) %>