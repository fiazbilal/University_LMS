class Registration < ApplicationRecord
  belongs_to :User
  belongs_to :Course

  has_one_attached :avatar
end
