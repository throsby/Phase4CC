class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name
  
  has_many :sweets
end
