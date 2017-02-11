class Product < ActiveRecord::Base
  has_many :orders
  has_many :comments
  validates :name, :description, :image_url, presence: true
  validates :color, :location, :price, presence: true

  # Raty average rating
  def average_rating
    comments.average(:rating).to_f
  end
  
  # Raty total rating.
  def total_rating
    comments.count(:rating).to_f
  end
end
