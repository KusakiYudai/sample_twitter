class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #validates :nickname, presence: true
  #validates :email, presence: true
  #validates :desc, presence: true
  #has_many :posts, dependent: :destroy

  validates :password, presence: true
  validates :password, length: { in: 6..8 }

end
