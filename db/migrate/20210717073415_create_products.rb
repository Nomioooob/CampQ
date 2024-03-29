class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :picture
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
