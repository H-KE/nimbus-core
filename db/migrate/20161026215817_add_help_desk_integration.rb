class AddHelpDeskIntegration < ActiveRecord::Migration[5.0]
  def change
    add_column :retailers, :help_desk_type, :string, :default => 'NONE'
    add_column :retailers, :help_desk_api_url, :string
    add_column :retailers, :help_desk_auth, :string
    add_column :orders, :help_desk_ticket_id, :string
    add_index :orders, :help_desk_ticket_id, where: "(help_desk_ticket_id != null)"
  end
end
