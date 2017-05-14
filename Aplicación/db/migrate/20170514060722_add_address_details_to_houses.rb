class AddAddressDetailsToHouses < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :street, :string
    add_column :houses, :number, :integer
    add_column :houses, :postal, :integer
    add_column :houses, :colony, :string
  end
end
