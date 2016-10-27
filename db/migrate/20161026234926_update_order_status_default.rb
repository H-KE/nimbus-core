class UpdateOrderStatusDefault < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :status, :string, :default => "payment_pending", :null => false
  end
end
