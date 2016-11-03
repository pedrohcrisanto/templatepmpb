class AddUnitToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :unit, index: true, foreign_key: true
  end
end
