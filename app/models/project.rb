class Project < ApplicationRecord
  belongs_to :project_type

  has_many :project_users, dependent: :destroy
  has_many :task_times, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :histories, dependent: :destroy
  has_many :project_documents, dependent: :destroy
  has_one :project_hour, dependent: :destroy

end
