class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :brand
      t.string :style
      t.string :country
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
