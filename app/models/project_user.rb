class ProjectUser < ApplicationRecord
  belongs_to :project_role
  belongs_to :project
  belongs_to :user
end
