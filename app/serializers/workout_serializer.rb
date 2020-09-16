# frozen_string_literal: true

class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :workout_type, :distance, :duration
  # has_many :routines
  # attributes :name
end
