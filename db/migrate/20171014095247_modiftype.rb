class Modiftype < ActiveRecord::Migration
  def change
    change_column :towns, :nom, :string
    change_column :towns, :latitude, :float
    change_column :towns, :longitude, :float
  end
end
