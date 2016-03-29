class CreateClientsRoles < ActiveRecord::Migration
  def change
    create_table :clients_roles, id: false do |t|
      t.belongs_to :client, index: true
      t.belongs_to :role, index: true
    end
  end
end
