class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :id1
      t.integer :w1
      t.integer :f1
      t.integer :m1
      t.integer :a1
      t.integer :id2
      t.integer :w2
      t.integer :f2
      t.integer :m2
      t.integer :a2
      t.references :survivor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
