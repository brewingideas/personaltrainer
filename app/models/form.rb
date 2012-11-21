class Form < ActiveRecord::Base
  attr_accessible :activity, :age, :first_name, :goals, :history, :second_name, :time, :training
end

class User < ActiveRecord::Base
  attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end