class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: true
    validates :email, :password, :name, presence: true, on: :create

    has_many :disciplines
    has_many :media, through: :disciplines

    has_many :projects
    has_many :collaborations

    has_many :joined_projects, through: :collaborations, source: :project
end
