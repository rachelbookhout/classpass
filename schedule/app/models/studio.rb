class Studio < ActiveRecord::Base
  has_many :lessons
  has_many :teachers
end
