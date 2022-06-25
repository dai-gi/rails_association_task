class Address < ApplicationRecord
  has_many :orders
  belongs_to :addressable, polymorphic: true
end
