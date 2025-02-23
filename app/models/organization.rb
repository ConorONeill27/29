class Organization < ApplicationRecord
  validates :name, presence: true
  has_many :notebooks
  has_many :organization_memberships, dependent: :destroy
  has_many :users, through: :organization_memberships
end
