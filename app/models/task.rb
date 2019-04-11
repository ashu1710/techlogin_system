class Task < ApplicationRecord
  belongs_to :project
  belongs_to :user

  has_many :task_times, dependent: :destroy
  has_many :comments, dependent: :destroy
end
