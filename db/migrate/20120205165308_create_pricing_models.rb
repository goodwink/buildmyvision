class CreatePricingModels < ActiveRecord::Migration
  def change
    create_table :pricing_models do |t|
      t.string :name

      t.timestamps
    end
  end
end
