class AddAcceptToClient < ActiveRecord::Migration
  def change
    add_column :clients, :is_accept, :boolean
  end
end
