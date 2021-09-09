class User < ApplicationRecord

  has_many :registercourses
  has_many :courses, :through => :registercourses, dependent: :delete_all

  has_many :favorites
  has_many :courses, :through => :favorites,dependent: :delete_all

  has_one_attached :avatar
  has_one  :profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  #VALID_STATUSES = ['Student','Teacher']
  enum status: [:student, :teacher]
    
  #validates :status, inclusion: { in: VALID_STATUSES }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable   

end
