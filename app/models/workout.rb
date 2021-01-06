class Workout < ApplicationRecord
    has_and_belongs_to_many :routines
end

# rails g migration CreateWorkoutsRoutines workout:references routine:references