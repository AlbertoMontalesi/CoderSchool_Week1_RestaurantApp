class AddPhoneToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :phone, :integer
  end
end
