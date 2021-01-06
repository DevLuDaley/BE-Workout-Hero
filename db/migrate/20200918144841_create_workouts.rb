# frozen_string_literal: true

class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :workout_type
      t.string :workout_name
      t.integer :distance
      t.integer :duration

      t.timestamps
    end
  end
end
