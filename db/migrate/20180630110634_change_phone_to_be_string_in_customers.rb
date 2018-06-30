class ChangePhoneToBeStringInCustomers < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :x, :float
    change_column :posts, :y, :float
  end
end
