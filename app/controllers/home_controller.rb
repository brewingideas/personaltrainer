class HomeController < ApplicationController
  def index
  	@forms = Form.order("created_at ASC").limit(5)
  end
end
