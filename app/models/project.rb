class Project < ApplicationRecord
  belongs_to :user
  has_many :collaborations
  has_many :collaborators, through: :collaborations, source: :user
end
