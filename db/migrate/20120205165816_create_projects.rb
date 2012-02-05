class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :target_market
      t.integer :pricing_model_id
      t.text :description
      t.string :status
      t.string :trello_card_id
      t.integer :schedule_id

      t.timestamps
    end
  end
end
