class ModifsColonnes < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.remove :name, :surname, :birthday
      t.string :name
      t.string :surname
      t.date :birthday
    end
  end
end
