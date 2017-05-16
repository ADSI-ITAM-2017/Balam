class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      
      t.string   :title
      t.text     :description
      t.string   :file
      t.integer  :cost
      t.string :street
      t.integer :number
      t.integer :postal
      t.string :colony
      
    end
  end

end
