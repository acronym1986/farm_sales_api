class CreateFarmTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :farm_tasks do |t|
      t.decimal :pick_quantity
      t.decimal :plant_quantity
      t.string :location
      t.date :task_date

      t.timestamps
    end
  end
end
