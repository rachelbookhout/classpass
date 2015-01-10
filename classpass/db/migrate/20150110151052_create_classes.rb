class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :name
      t.integer :studio_id
      t.integer :type_id
      t.integer :time_id
      t.datetime :start_time
      t.datetime :end_time
      t.integer :day_id
      t.timestamps
    end

    create_table :studios do |t|
      t.string :name
      t.string :address
    end

    create_table :teachers do |t|
      t.string :full_name
      t.string :first_name
      t.string :last_name
      t.integer :studio_id
    end

    create_table :days do |t|
      t.string :day_of_week
    end

    create_table :types do |t|
      t.string :exercise
      t.string :variant
    end

    create_table :times do |t|
      t.string :time_of_day
    end
  end
end
