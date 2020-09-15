# frozen_string_literal: true

class Api::V1::WorkoutsController < ApplicationController
  # before_action :find_workout, only: [:update]
  def index
    @workouts = Workout.all.order(:created_at)
    render json: @workouts, status: 200
  end

  def create
    @workout = Workout.create(workout_params)
    render json: @workout, status: 201
  end

  def destroy
    workout = Workout.find(params[:id])
    render json: { workoutId: workout.id }, status: 200 if workout.destroy
  end

  def update
    @workout = Workout.find(params[:id])
    # if @workout.update(workout_params)
    #   render json: @workout, status: 200

    #  @workout.update(workout_params)
    if @workout.save
      render json: @workout, status: :accepted
    else
      render json: { errors: @workout.errors.full_messages }, status: :unprocessible_entity
      # end
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:type, :name, :duration, :distance)
  end

  #   def workout_params
  #     params.permit(:title, :content)
  #   end

  #   def find_workout
  #     @workout = Workout.find(params[:id])
  #   end
end
