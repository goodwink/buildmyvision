class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.text :description
      t.integer :priority
      t.boolean :mvp_approved
      t.string :trello_card_id
      t.integer :project_id

      t.timestamps
    end
  end
end
