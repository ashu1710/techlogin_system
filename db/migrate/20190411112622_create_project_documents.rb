class CreateProjectDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :project_documents do |t|
      t.string :file_name
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
