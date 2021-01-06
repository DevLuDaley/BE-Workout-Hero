# frozen_string_literal: true
class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :feeds do |t|
      t.string :feed_name

      t.timestamps
    end
  end
end
