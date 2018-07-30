class CreateButcher < ActiveRecord::Migration[5.0]
  def change
    create_table :butchers do |t|
      t.string :item
    end
  end
end
