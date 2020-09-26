# frozen_string_literal: true

class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :workout_name, :workout_type, :distance, :duration, :created_at
  has_many :routines
  # has_and_belongs_to_many :routines
  # attributes :workout_name

  # ! routine.workouts.create(name: 'Keanu Reeves')
end
