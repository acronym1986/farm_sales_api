class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.decimal :sold_quantity
      t.decimal :leftover_quantity
      t.decimal :annual_sale
      t.decimal :week_sale
      t.references :stall, null: false, foreign_key: true

      t.timestamps
    end
  end
end
