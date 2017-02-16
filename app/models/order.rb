class Order < ActiveRecord::Base
  # touch true used for expiring product cache
  belongs_to :product, touch: true
  belongs_to :user
end