class DropTimes < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.datetime :time_of_day
    end
  end
end
