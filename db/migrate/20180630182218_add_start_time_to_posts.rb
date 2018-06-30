class AddStartTimeToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :startTime, :datetime
  end
end
