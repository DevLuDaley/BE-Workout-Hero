class Workout < ApplicationRecord
    has_and_belongs_to_many :routines, dependent: :destroy
    accepts_nested_attributes_for :routines
end

# rails g migration CreateWorkoutsRoutines workout:references routine:references
