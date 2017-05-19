class AddUserToHouses < ActiveRecord::Migration[5.0]
  def change
    add_reference :houses, :user, foreign_key: true
    add_foreign_key :houses, :users
  end
end
