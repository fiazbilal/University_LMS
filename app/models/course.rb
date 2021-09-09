class Course < ApplicationRecord

  has_many :ragistercourses
  has_many :users, :through => :registercourses,dependent: :delete_all

  has_many :favorites
  has_many :users, :through => :favorites,dependent: :delete_all
  
end
