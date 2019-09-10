class Pizza < ApplicationRecord
  belongs_to :shape
  belongs_to :sauce
  belongs_to :flavor
  belongs_to :size
end
