class Room < ApplicationRecord
  belongs_to :user
  has_many :photos
  
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  
  validates :home_type, presence: true
  validates :room_type, presence: true
  validates :accommodate, presence: true
  validates :bedroom, presence: true
  validates :bathroom, presence: true
  
  def cover_photo(size)
    if self.photos.length > 0
      self.photos[0].image.url(size)
    else
      "blank.jpg"
    end
  end
end