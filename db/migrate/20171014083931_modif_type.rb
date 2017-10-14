class ModifType < ActiveRecord::Migration
  def change
    change_column :towns, :nom, :string
    change_column :towns, :latitude, :string
    change_column :towns, :longitude, :string
  end
end
