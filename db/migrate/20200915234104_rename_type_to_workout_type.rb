# frozen_string_literal: true

class RenameTypeToWorkoutType < ActiveRecord::Migration[6.0]
  def change
    rename_column :workouts, :type, :workout_type
  end
end
