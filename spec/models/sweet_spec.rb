require 'rails_helper'

RSpec.describe Sweet, type: :model do
  describe 'relationships' do
    let(:vendor) { Vendor.create(name: 'Insomnia Cookies') }
    let(:sweet) { Sweet.create(name: 'Chocolate Chip Cookie') }
    let(:vendor_sweet) do
      VendorSweet.create(vendor_id: vendor.id, sweet_id: sweet.id, price: 300)
    end

    it 'can access the associated vendor_sweets' do
      expect(sweet.vendor_sweet).to include(vendor_sweet)
    end

    it 'can access the associated vendors' do
      expect(sweet.vendors).to include(vendor)
    end
  end
end
