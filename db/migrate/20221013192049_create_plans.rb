class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :plan_name
      t.text :monthly_fee

      t.timestamps
    end
  end
end
