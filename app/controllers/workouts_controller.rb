class WorkoutsController < ApplicationController

	before_filter :get_workout, only: [:edit, :update, :destroy]


  def index
  	@workouts = current_user.workouts.all
  end

  def new
  	@workout = current_user.workouts.new
  end

  def create
  	@workout = current_user.workouts.new(params[:workout])

  	if @workout.save
  		flash[:alert] = "New workout added"
  		redirect_to workouts_path
  	else
  		render "new"
  	end
  end

  def edit
  end

  def update
  	if @workout.update_attributes(params[:workout])
  		flash[:alert] = "Workout updated!"
  		redirect_to workouts_path
  	else
  		render "edit"
  	end
  end

  def destroy
  	@workout.destroy
  	flash[:alert] = "Workout deleted!"
  	redirect_to workouts_path
  end

  private

  def get_workout
  	@workout = current_user.workout.find(params[:id])
  end

end