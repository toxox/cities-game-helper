class CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :region, :first_letter
end