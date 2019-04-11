class CreateSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :salaries do |t|
      t.float :total_leaves
      t.integer :working_days
      t.integer :salary
      t.float :daily_salary
      t.float :hour_salary
      t.float :unpaid_leave
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
