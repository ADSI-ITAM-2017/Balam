class AddTimesToHouses < ActiveRecord::Migration[5.0]
  def change
    add_column(:houses, :created_at, :datetime)
    add_column(:houses, :updated_at, :datetime)
  end
end
