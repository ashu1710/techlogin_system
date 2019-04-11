class AddColumn1ToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :login, :boolean
    add_column :users, :working_hours, :integer
  end
end
