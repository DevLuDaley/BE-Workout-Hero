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
    @routine = Routine.find(params[:id])
    if params.include?('workout_id_to_delete')
      @workoutlist = @routine.workouts
      @workout_to_delete = @workoutlist.select { |w| w.id == params[:workout_id_to_delete] }
      # can = @routine.workouts.select { |w| w.id == params[:workout_id_to_delete] }
      @routine.workouts.destroy(@workout_to_delete)
      render json: { routineId: params[:id], workoutId: params[:workout_id_to_delete] }, status: 200
      # render json: { routineId: @routine.id, workoutId: params[:workout_id_to_delete] }, status: 200
      # @workout_to_delete.destroy
      # render json: { routineId: routine.id }, status: 200 if routine.destroy
      # binding.pry
    else
      # @routine = Routine.find(params[:id])
      render json: { routineId: @routine.id }, status: 200 #if routine.destroy
    end
    end

  def update
    @routine = Routine.find(params[:id])
    # binding.pry
    @routine.update(routine_params)
    if params.include?('workout_name')

    workout_type, workout_name, distance, duration = params.values_at(
      :workout_type,
      :workout_name,
      :distance,
      :duration
    )
    
    @routine.workouts.build(
      workout_type: workout_type,
      workout_name: workout_name,
      distance: distance,
      duration: duration
    )

    else
      @routine.save
    end
    # @routine.workouts.build(workout_type: params[:workout_type], workout_name: params[:workout_name], distance: params[:distance], duration: params[:duration])
    # @routine.save

    if @routine.save
      render json: @routine, status: :accepted
    else
      render json: { errors: @routine.errors.full_messages }, status: :unprocessible_entity
    end
    # binding.pry
  end

  private

  def routine_params
    params.require(:routine).permit(:routine_name)
  end

  # def update_params
  #   params.require(:routine).permit(:routine_name)
  # end
end
