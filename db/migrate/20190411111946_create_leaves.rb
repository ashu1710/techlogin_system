class CreateLeaves < ActiveRecord::Migration[5.2]
  def change
    create_table :leaves do |t|
      t.date :apply_date
      t.string :reason
      t.integer :leave_status_id
      t.string :response
      t.float :no_of_days
      t.string :respond_by
      t.integer :leave_type_id
      t.string :leave_request
      t.boolean :is_system_generated
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
