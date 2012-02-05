class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.integer :admin_user_id
      t.integer :days_per_project

      t.timestamps
    end
  end
end
