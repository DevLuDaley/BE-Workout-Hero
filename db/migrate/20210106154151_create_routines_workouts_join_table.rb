class CreateRoutinesWorkoutsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_routines_workouts_join_table :routines, :workouts
  end
end
