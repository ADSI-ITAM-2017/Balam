class AddTypeToHouse < ActiveRecord::Migration[5.0]
  def change
    add_column(:houses, :kind, :string)
  end
end
