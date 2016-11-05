class AddStatusDetailToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :status_detail, :string
  end
end
