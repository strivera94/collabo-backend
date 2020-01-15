class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :alias, :about
  has_many :projects
  has_many :collaborations, through: :projects
end
