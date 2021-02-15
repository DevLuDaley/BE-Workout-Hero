class Routine < ApplicationRecord
    has_and_belongs_to_many :workouts, dependent: :destroy
    accepts_nested_attributes_for :workouts
end
