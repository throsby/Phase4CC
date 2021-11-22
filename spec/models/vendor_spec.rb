require 'rails_helper'

RSpec.describe Vendor, type: :model do
  describe 'relationships' do
    let(:vendor) { Vendor.create(name: 'Insomnia Cookies') }
    let(:sweet) { Sweet.create(name: 'Chocolate Chip Cookie') }
    let(:vendor_sweet) do
      VendorSweet.create(vendor_id: vendor.id, sweet_id: sweet.id, price: 300)
    end

    it 'can access the associated vendor_sweets' do
      expect(vendor.vendor_sweets).to include(vendor_sweet)
    end

    it 'can access the associated sweets' do
      expect(vendor.sweets).to include(sweet)
    end
  end
end
