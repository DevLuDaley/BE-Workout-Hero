# frozen_string_literal: true

class Api::V1::RoutinesController < ApplicationController
  def index
    @routines = Routine.all.order(:created_at)
    render json: @routines, status: 200
  end

  def create
    # binding.pry
    @routine = Routine.create(routine_params)
    render json: @routine, status: 201
  end

  def destroy
    routine = Routine.find(params[:id])
    render json: { routineId: routine.id }, status: 200 if routine.destroy
  end

  def update
    @routine = Routine.find(params[:id])
    # @routine.workouts.create(params[:workout_type, :name, :distance, :duration])
    # if @routine.update(routine_params)
    #   render json: @routine, status: 200
    #  ? 02 > r.workouts.create(workout_type:"Cardio", name: "Sprinting", distance: "2", duration: "4")
    #  @routine.update(routine_params)
    if @routine.save
      render json: @routine, status: :accepted
    else
      render json: { errors: @routine.errors.full_messages }, status: :unprocessible_entity
      # end
    end
  end

  private

  def routine_params
    params.require(:routine).permit(:type, :name, :duration, :distance)
  end

  def update_params
    params.require(:routine).permit(:type, :name, :duration, :distance, :workouts)
  end

  #   def routine_params
  #     params.permit(:title, :content)
  #   end

  #   def find_routine
  #     @routine = Routine.find(params[:id])
  #   end
end

# end
