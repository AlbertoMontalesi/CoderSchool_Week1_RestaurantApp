class FoodItem < ApplicationRecord
  belongs_to :section
  validates :name, :price, presence: true
  has_many :orders
  has_many :comments
  
  def image_url_or_default
    image_url.presence || "http://loremflickr.com/320/240/#{name.gsub(' ','')}"  ##returns null if there is no url and in that case uses loremflickr
    
  end

 def self.search(search)
  where("name ILIKE ?",  "%#{search}%") 
end


end
