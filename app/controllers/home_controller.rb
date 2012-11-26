class HomeController < ApplicationController
  def index
  	if current_user?
  		render "index"
  	else
  		render "index"
  	end

  	@forms = Form.order("created_at ASC").limit(5)
  end
end
