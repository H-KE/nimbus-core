class SetDefaultOrderStatus < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :status, :string, :default => "verifying", :null => false
  end
end
