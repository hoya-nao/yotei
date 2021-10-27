class AddMemoToWelcomes < ActiveRecord::Migration[6.1]
  def change
    change_column :welcomes, :owari, :datetime
  end
end
