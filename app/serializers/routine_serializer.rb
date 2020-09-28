# frozen_string_literal: true

class RoutineSerializer < ActiveModel::Serializer
  # attributes :id
  attributes :id, :routine_name #, :workouts # , :duration, :distance
  has_many :workouts
end
