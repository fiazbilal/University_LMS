class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :course

  has_one_attached :avatar
end
