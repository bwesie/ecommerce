class RemoveOrderIdFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :order_id, :integer
  end
end
