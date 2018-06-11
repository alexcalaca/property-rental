class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
         
  validates :fullname, presence: true, length: {maximum: 50}
  has_many :rooms
end