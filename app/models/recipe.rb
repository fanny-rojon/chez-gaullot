class Recipe < ApplicationRecord
  has_one_attached :photo

  belongs_to :category

  validates :name, :prep_time, :ingredients_list, :preparation, :category_id, presence: true
end
