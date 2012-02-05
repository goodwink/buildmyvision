class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :project_id
      t.datetime :complete_by
      t.integer :consultant_id
      t.datetime :delivered_on

      t.timestamps
    end
  end
end
