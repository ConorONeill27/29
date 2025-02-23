class Notebook < ApplicationRecord
  belongs_to :owner, class_name: "User"  # Owner of personal notebooks
  has_many :notes, dependent: :destroy
  has_many :notebook_memberships, dependent: :destroy
  has_many :users, through: :notebook_memberships  # Users who have access to shared notebooks
  belongs_to :organization, optional: true  # If it's a shared notebook, link to an organization
end
