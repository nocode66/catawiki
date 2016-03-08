class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.integer :role
      t.integer :subcription_plan_id
      t.integer :role, default: 0
      t.date :subscription_expiration_date

      t.timestamps
    end
  end
end
