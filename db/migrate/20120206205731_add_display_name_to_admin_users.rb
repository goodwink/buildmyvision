class AddDisplayNameToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :display_name, :string

  end
end
