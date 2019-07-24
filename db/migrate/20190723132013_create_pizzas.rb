class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.text :ingredients

      t.timestamps
    end
  end
end
