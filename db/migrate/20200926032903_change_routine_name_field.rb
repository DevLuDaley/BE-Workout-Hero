# frozen_string_literal: true

class ChangeRoutineNameField < ActiveRecord::Migration[6.0]
  def change
    rename_column :routines, :name, :routine_name
  end
end
