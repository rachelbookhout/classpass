class ChangeLessons < ActiveRecord::Migration
  def change
    rename_column(:lessons, :time_id, :period_id)
  end
end
