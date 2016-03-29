class RemoveBooleanToClients < ActiveRecord::Migration
  def change
  	remove_column :clients, :is_accept, :boolean
  	remove_column :clients, :locked, :boolean
  end
end
