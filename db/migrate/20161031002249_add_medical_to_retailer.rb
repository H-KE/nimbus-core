class AddMedicalToRetailer < ActiveRecord::Migration[5.0]
  def change
    add_column :retailers, :medical, :boolean, :default => false, :null => false
  end
end
