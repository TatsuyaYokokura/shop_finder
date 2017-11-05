class Shop < ActiveRecord::Base
  has_many :images
  has_many :reviews
end
