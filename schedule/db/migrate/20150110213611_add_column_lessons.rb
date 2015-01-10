class AddColumnLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :body_id, :integer
    create_table :bodies do |t|
      t.string :part
    end
  end
end
