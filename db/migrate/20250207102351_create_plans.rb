class CreatePlans < ActiveRecord::Migration[8.0]
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :price_cents
      t.string :description
      t.boolean :highlight, default: false
      t.integer :position
      t.string :image_path
      t.references :offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
