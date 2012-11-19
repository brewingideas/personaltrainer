require 'forms'

class User < ActiveRecord::Base
  attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end

<div class="field">
    <%= f.label :goals %><br />
    <%= f.text_area :goals %>
</div>
<% end %>