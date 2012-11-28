 class HomeController < ApplicationController
  def index
  	@workouts = Workouts.order("created_at ASC").limit(5)
  end
end

