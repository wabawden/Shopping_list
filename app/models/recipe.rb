class Recipe < ApplicationRecord
  has_many :recipe_comments, dependent: :destroy
end
