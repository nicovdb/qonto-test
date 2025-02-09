class CreateOffers < ActiveRecord::Migration[8.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.boolean :highlight, default: false
      t.string :description
      t.integer :position

      t.timestamps
    end
  end
end
