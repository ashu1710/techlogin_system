class CreateEodPerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :eod_performances do |t|
      t.integer :eod_diff_in_sec
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
