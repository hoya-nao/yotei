class AddMemoToWelcomes < ActiveRecord::Migration[6.1]
  def change
    add_column :welcomes, :memo, :string
  end
end
