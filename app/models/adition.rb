class Adition < ApplicationRecord
  belongs_to :pizza
  belongs_to :ingredient

  scope :pz_ing, -> { where(pizza_id: $pz) }
end
