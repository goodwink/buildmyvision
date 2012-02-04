class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :email
      t.string :name
      t.string :url
      t.string :description

      t.timestamps
    end
  end
end
