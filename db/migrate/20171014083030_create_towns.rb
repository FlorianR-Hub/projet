class CreateTowns < ActiveRecord::Migration
  def change
    create_table :towns do |t|
      t.text :nom
      t.text :latitude
      t.text :longitude

      t.timestamps
    end
  end
end
