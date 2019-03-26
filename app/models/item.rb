class Item < ApplicationRecord

  attr_accessor :title, :body

  validates :price, numericality: { greater_than: 0, allow_nil: true }
  validates :name, :description, presence: true

  validates :name, presence: true
end
