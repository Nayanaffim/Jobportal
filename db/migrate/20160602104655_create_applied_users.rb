class CreateAppliedUsers < ActiveRecord::Migration
  def change
    create_table :applied_users do |t|
      t.integer :vacancy_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
