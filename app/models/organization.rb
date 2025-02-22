class Organization < ApplicationRecord
  has_rich_text :description
  validates :name, presence: true
end
