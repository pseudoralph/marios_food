class Product < ActiveRecord::Base
  validates :name, :country_origin, :cost, presence: true
  has_many :reviews, dependent: :destroy
end
