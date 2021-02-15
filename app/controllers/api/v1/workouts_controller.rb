# frozen_string_literal: true

class Api::V1::WorkoutsController < ApplicationController
  # before_action :find_workout, only: [:update]
  def index
    @workouts = Workout.all.order(:created_at)
    render json: @workouts, status: 200
  end
  
  def new
    @routine = Routine.find(params[:routineId])
    @workout = Workout.new
  end
  
  def create
    @routine = Routine.find(params[:routineId])
    @workout = @routine.workouts.build(workout_params)
    @workout.routines.push(@routine)
    # binding.pry
    # @workout = Workout.create(workout_params)
    # @workout = Workout.create(
    #   workout_type, workout_name, distance, duration = params.values_at(
    #     :workout_type,
    #     :workout_name,
    #     :distance,
    #     :duration
    #   )
    # )
    # @routine = routines.find { |r| r.id == params[:routineId]}
    # @workout.routines.push(routineId)

    @workout.save
    render json: { workout: @workout, routineId: params[:routineId] }, status: 201
    # binding.pry
  end

  def destroy
    workout = Workout.find(params[:id])
    # workout = Workout.find(params[:workout_id_to_delete])
    render json: { workoutId: workout.id }, status: 200 if workout.destroy
  end

  def update
    @workout = Workout.find(params[:id])
    # if @workout.update(workout_params)
    #   render json: @workout, status: 200

     @workout.update(workout_params)
    if @workout.save
      render json: @workout, status: :accepted
    else
      render json: { errors: @workout.errors.full_messages }, status: :unprocessible_entity
      # end
    end
  end

  private

  def workout_params
    params.require(:workout).permit(:id, :workout_type, :workout_name, :distance, :duration, :workout, :routineObj, :routineId, :routine_id)
      # , { routine_attributes: [:routineId, :routine_name, :id] }
  end
  # def workout_params
  #   params.require(:workout).permit(:workout_type, :workout_name, :distance, :duration)
  # end

  #   def find_workout
  #     @workout = Workout.find(params[:id])
  #   end
end
