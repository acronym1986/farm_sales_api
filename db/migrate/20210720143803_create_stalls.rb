class CreateStalls < ActiveRecord::Migration[6.1]
  def change
    create_table :stalls do |t|
      t.decimal :product_quantity
      t.string :location
      t.date :store_date
      t.decimal :cost
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
