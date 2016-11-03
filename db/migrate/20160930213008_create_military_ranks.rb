class CreateMilitaryRanks < ActiveRecord::Migration[5.0]
  def change
    create_table :military_ranks do |t|
      t.string :name, null: false, default: ''
      t.string :abbreviation, null: false, default: ''
      t.timestamps
    end
    add_index :military_ranks, :name, unique: true
  end
end
