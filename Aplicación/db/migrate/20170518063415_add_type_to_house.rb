class AddTypeToHouse < ActiveRecord::Migration[5.0]
  def change
    add_column(:houses, :type, :string)
  end
end
