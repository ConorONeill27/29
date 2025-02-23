class OrganizationMembership < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  
  validates :user_id, uniqueness: { scope: :organization_id, message: "User is already in this organization" }
end
