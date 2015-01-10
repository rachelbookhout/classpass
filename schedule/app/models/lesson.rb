class Lesson < ActiveRecord::Base
  belongs_to :studio
  belongs_to :teacher
  belongs_to :day
  belongs_to :period
  belongs_to :type
  belongs_to :body
end
