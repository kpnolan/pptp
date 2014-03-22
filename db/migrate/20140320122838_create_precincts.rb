class CreatePrecincts < ActiveRecord::Migration
  def change
    create_table :precincts do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
