class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: true
    validates :email, :password, :name, presence: true, on: :create

    has_many :disciplines
    has_many :media, through: :disciplines

    has_many :projects, dependent: :destroy
    has_many :collaborations, dependent: :destroy
    has_many :joined_projects, through: :collaborations, source: :project

    # has_many :reviews

    has_many :reviews_as_reviewer, class_name: 'Review', foreign_key: :reviewer_id, dependent: :destroy
    has_many :reviewees, through: :reviews_as_reviewer #, source: :reviewee

    has_many :reviews_as_reviewee, class_name: 'Review', foreign_key: :reviewee_id, dependent: :destroy
    has_many :reviewers, through: :reviews_as_reviewee #, source: :reviewer
end
