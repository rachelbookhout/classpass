class Lesson < ActiveRecord::Base
  belongs_to :studio
  belongs_to :teacher
  belongs_to :day
  belongs_to :time
  belongs_to :type
end
