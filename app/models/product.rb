class Product < ApplicationRecord
  belongs_to :supplier
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products

  validates :name, presence: true 
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end


end


  