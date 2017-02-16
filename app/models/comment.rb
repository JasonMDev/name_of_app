class Comment < ActiveRecord::Base
  # Associations
  belongs_to :user
  belongs_to :product, touch: true
  validates :body, :user, :product, presence: true
  validates :rating, numericality: { only_integer: true}

  # Scopes
  scope :rating_desc, -> { order(rating: :desc) }
  

end
