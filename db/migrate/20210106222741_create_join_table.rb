# frozen_string_literal: true

class CreateJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :routines, :workouts 
    # do |t|
      # t.index [:_id, :_id]
      # t.index [:_id, :_id]
    # end 
  end
end