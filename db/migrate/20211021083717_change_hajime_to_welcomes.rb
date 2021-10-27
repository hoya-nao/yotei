class AddMemoToWelcomes < ActiveRecord::Migration[6.1]
  def change
    change_column :welcomes, :hajime, :datetime
  end
end
