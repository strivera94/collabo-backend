class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :description, :completed?, :title, :user_id
  has_many :collaborations
end
