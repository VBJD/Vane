class CreatePlanta < ActiveRecord::Migration
  def change
    create_table :planta do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
