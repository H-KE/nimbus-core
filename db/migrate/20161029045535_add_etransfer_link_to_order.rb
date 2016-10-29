class AddEtransferLinkToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :etransfer_link, :string
  end
end
