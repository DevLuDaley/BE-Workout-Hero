# frozen_string_literal: true

class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :workout_type, :distance, :duration, :created_at
  has_many :routines
  # has_and_belongs_to_many :routines
  # attributes :name

  # ! routine.workouts.create(name: 'Keanu Reeves')

  routine.workouts.create(workout_type:"Cardio", name: "Jogging", distance: "1", duration: "1")

end
