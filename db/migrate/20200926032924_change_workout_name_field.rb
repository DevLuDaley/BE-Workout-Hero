# frozen_string_literal: true

class ChangeWorkoutNameField < ActiveRecord::Migration[6.0]
  def change
    rename_column :workouts, :name, :workout_name
  end
end
