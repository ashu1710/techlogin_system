class TaskTime < ApplicationRecord
  belongs_to :user
  belongs_to :task
  belongs_to :project
end
