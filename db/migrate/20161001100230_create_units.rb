class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.string :name, null: false, default: ""
      t.string :address, null: false, default: ""
      t.string :zip_code, null: false, default: ""
      t.integer :parent_id
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
    add_index :units, :parent_id
  end
end
