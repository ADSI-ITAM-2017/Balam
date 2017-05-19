class AddLesseeToUser < ActiveRecord::Migration[5.0]
  def change
    add_column(:users, :lessee, :boolean)
  end
end
