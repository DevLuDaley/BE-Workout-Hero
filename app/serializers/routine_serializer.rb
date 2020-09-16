# frozen_string_literal: true

class RoutineSerializer < ActiveModel::Serializer
  # attributes :id
  # has_many :workouts
  attributes :id, :name # , :duration, :distance
end
