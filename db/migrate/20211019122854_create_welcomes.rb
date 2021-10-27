class CreateWelcomes < ActiveRecord::Migration[6.1]
  def change
    create_table :welcomes do |t|
      t.integer :id
      t.string :title
      t.date :hajime
      t.date :owari
      t.string :syuujitu
      t.datetime :kousin
      t.string :kakunin
      t.string :hensyuu
      t.string :sakujo
      t.string :memo
      t.timestamps
    end
  end
end

