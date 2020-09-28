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
    # binding.pry
    @routine.workouts.build(workout_type: params[:workout_type], workout_name: params[:workout_name], distance: params[:distance], duration: params[:duration])

    if @routine.save
      render json: @routine, status: :accepted
    else
      render json: { errors: @routine.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def routine_params
    params.require(:routine).permit(:type, :routine_name, :duration, :distance)
  end

  def update_params
    params.require(:routine).permit(:routine_name, :type, :workout_name, :duration, :distance, :workouts)
  end
end
