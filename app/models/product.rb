class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates_presence_of :nome, :preco
  validates_numericality_of :preco

  belongs_to :category
end
