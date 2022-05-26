class VendorSweet < ApplicationRecord
    belongs_to :vendor, dependent: :destroy
    belongs_to :sweet, dependent: :destroy

    validates :price, presence: true
    validates :price, numericality: { greater_than: 0 }
end
