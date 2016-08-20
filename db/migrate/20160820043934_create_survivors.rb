class CreateSurvivors < ActiveRecord::Migration
  def change
    create_table :survivors do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.integer :latitude
      t.integer :longitude
      t.integer :water
      t.integer :food
      t.integer :medication
      t.integer :ammunition
      t.boolean :infected

      t.timestamps null: false
    end
  end
end
