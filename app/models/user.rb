class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_and_belongs_to_many :organizations
  has_many :notebooks, dependent: :destroy
  has_many :notebook_memberships, dependent: :destroy
  has_many :shared_notebooks, through: :notebook_memberships, source: :notebook

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
