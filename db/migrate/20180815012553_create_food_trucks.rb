class CreateFoodTrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :food_trucks do |t|
      t.string :location
      t.string :type
      t.string :last_updated
      t.string :owner

      t.timestamps
    end
  end
end
