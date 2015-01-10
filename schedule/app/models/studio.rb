class Studio < ActiveRecord::Base
  has_many :lessons
  has_many :teachers
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
