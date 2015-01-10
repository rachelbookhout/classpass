class UpdatePeriodsLessons < ActiveRecord::Migration
  def change
    change_column(:lessons, :start_time, :time)
    change_column(:lessons, :end_time, :time)
    change_column(:periods, :time_of_day, :string)
  end
end
