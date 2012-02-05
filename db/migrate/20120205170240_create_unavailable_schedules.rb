class CreateUnavailableSchedules < ActiveRecord::Migration
  def change
    create_table :unavailable_schedules do |t|
      t.integer :consultant_id
      t.datetime :starts_on
      t.datetime :ends_on

      t.timestamps
    end
  end
end
