class ChangeSalaryToBeStringInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :salary, :string
  end
end
