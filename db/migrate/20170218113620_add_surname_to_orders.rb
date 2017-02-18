class AddSurnameToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :surname, :string
  end
end
