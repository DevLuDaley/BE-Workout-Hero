# frozen_string_literal: true

class Api::V1::RoutinesController < ApplicationController
  def index
    @routines = Routine.all.order(:created_at)
    render json: @routines, status: 200
  end

  def create
    @routine = Routine.create(routine_params)
    # binding.pry
    render json: @routine, status: 201
  end

  def destroy
    # ! make sure to destroy at the end
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
      #! destroy
      @routine.destroy
      render json: { routineId: @routine.id }, status: 200 #if routine.destroy
    end
    end

  def update
    @routine = Routine.find(params[:id])
    # binding.pry
    @routine.update(routine_params)
    
    if params.include?('update_workout')
      @workoutlist = @routine.workouts
      @workout = @workoutlist.find { |w| w.id == params[:workout][:id]}
      # puts @workout
      # puts @workoutlist[0]
      # puts params
      # puts params[:workout][:id]
      # .to_i}
      # binding.pry

      @workout = {
          workout_type: params[:workout][:workout_type],
          workout_name: params[:workout][:workout_name],
          distance: params[:workout][:distance],
          duration: params[:workout][:duration]
          # id: params[:workout][:workout_id],
          # workout: @workout,
        }
      # @workout.save
      # render json: @routine, status: :accepted

    # else if params.include?('workout_name')
    else if params.include?('create_workout')
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
    end


    if @workout && @routine.save
      render json: {workout: @workout, routineId: @routine.id }, status: :accepted

    elsif @routine.save
      render json: @routine, status: :accepted
    else
      render json: { errors: @routine.errors.full_messages }, status: :unprocessible_entity
    end
    end
    # binding.pry
  # end

  private

  def routine_params
    # params.require(:routine).permit(:routine_name, :id)
    params.require(:routine).permit(:routine_name, :id)
    # params.permit(:workout, :routine, :routine_name, :id, :update_workout, {workout_attributes: [:workout_id, :workout_name, :workout_type, :distance, :duration]})
  end

  def workout_params
    params.permit(:workout_id, :workout_name, :workout_type, :distance, :duration, :workout, :routine)
  end

  # def update_params
  #   params.require(:routine).permit(:routine_name)
  # end
end