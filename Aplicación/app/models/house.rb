class House < ApplicationRecord
    
    mount_uploader :file, PictureUploader
    belongs_to :user    
    validates :title, presence:true, length: { maximum: 50 }
    validates :description, presence:true, length: { maximum: 500 }
    validates :file, presence:true
    validates :street, presence:true, length: { maximum: 50 }
    validates :number, presence:true, numericality: { only_integer: true}
    validates :postal, numericality: { only_integer: true, greater_than: 9999, less_than: 100000 }
    validates :colony, presence:true
    validates :cost, numericality: { only_integer: true} 
end
