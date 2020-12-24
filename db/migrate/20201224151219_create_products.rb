class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price, default: 0
      t.integer :original_price, default: 0
      t.boolean :active, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
