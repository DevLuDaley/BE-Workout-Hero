# frozen_string_literal: true

class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :workout_type, :distance, :duration, :created_at
  # has_many :routines
  # attributes :name
end
