class ChangeStudios < ActiveRecord::Migration
  def change
    add_column :studios, :latitude , :float
    add_column :studios, :longitude , :float
  end
end
