# frozen_string_literal: true
class CreateRoutinesWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :routines_workouts do |t|
      t.references :routine, null: false, foreign_key: true
      t.references :workout, null: false, foreign_key: true
      # t.bigint "routine_id", null: false
      # t.bigint "workout_id", null: false
    end
  end
end
