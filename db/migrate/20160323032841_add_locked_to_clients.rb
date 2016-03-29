class AddLockedToClients < ActiveRecord::Migration
  def change
    add_column :clients, :locked, :boolean
  end
end
