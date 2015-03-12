class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string  :name
      t.string  :description
      t.decimal :price, precision: 10, scale: 2
      t.decimal :total_in_shelf, precision: 10, scale: 2
      t.decimal :total_in_vault, precision: 10, scale: 2
      t.integer :store_id

      t.timestamps null: false
    end
  end
end
