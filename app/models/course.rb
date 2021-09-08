class Course < ApplicationRecord

  has_many :ragistrations
  has_many :users, :through => :registrations

  has_many :favorites
  has_many :users, :through => :favorites
  
end
