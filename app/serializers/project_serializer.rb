class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :description, :completed?, :title, :user_id, :user
  has_many :collaborations
end
