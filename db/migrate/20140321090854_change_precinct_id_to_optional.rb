class ChangePrecinctIdToOptional < ActiveRecord::Migration
  def change
    change_column :police, :precinct_id, :integer, null: true
  end
end
