class AddDefaultLesseeToUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :lessee
    add_column(:users, :lessee, :boolean, :default => false)
  end
end
