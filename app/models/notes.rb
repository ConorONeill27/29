class Notes < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
end
