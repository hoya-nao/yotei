class CreateTamesis < ActiveRecord::Migration[6.1]
  def change
    create_table :tamesis do |t|
      t.integer :category_id
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
