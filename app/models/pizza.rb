class Pizza < ApplicationRecord
  belongs_to :shape
  belongs_to :sauce
  belongs_to :flavor
  belongs_to :size

  scope :user_id, -> { where(user_id: $us) }
end
