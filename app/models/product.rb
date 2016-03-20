class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments
  validates :name, presence: true

  # Raty average rating
  def average_rating
    comments.average(:rating).to_f
  end
  
  # Raty total rating.
  def total_rating
    comments.count(:rating).to_f
  end
end
