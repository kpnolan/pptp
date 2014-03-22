class CreatePolice < ActiveRecord::Migration
  def change
    create_table :police do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :svcid_badge
      t.integer :year_verified, null: false
      t.integer :title_id, null: false
      t.integer :department_id, null: false
      t.integer :precinct_id, null: false

      t.timestamps
    end
  end
end
