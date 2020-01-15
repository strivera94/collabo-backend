class MediumSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :discipline
end
