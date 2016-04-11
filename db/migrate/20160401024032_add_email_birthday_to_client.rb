class AddEmailBirthdayToClient < ActiveRecord::Migration
  def change
    add_column :clients, :email, :string
    add_column :clients, :birthday, :datetime
  end
end
