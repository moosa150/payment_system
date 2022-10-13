class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.string :name
      t.text :code
      t.string :unit_price
      t.string :max_unit_limit
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
