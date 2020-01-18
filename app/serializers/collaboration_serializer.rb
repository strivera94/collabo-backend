class CollaborationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :project_id, :user, :project
  has_one :user
  has_one :project
end
