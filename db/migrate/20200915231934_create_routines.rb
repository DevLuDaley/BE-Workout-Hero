

class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :routines do |t|
      t.string :routine_name
      # t.string :sugar

      t.timestamps
    end
  end
end
