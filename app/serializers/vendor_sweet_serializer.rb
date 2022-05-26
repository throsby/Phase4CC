class VendorSweetSerializer < ActiveModel::Serializer
  attributes :price
  belongs_to :sweet

  
end
