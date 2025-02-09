class CreateOptions < ActiveRecord::Migration[8.0]
  def change
    create_table :options do |t|
      t.string :description
      t.string :detail
      t.references :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
