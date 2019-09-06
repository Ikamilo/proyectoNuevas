class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category

  #scope :category_id, -> { where(category_id: 1) }
end
