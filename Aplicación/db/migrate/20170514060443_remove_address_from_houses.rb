class RemoveAddressFromHouses < ActiveRecord::Migration[5.0]
  def change
    remove_column :houses, :address, :string
  end
end
