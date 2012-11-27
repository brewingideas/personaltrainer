 class HomeController < ApplicationController
  def index
  	@lists = Workout.order("created_at ASC").limit(5)
  end
end

