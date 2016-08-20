class CreateFlags < ActiveRecord::Migration
  def change
    create_table :flags do |t|
      t.string :informer
      t.references :survivor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
