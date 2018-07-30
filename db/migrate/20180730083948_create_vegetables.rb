class CreateVegetables < ActiveRecord::Migration[5.0]
  def change
    create_table :vegetables do |t|
      t.string :item
    end
  end
end
