class AddRolloutGroupsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :staff, :boolean

    add_column :users, :alpha, :boolean

    add_column :users, :beta, :boolean

  end
end
