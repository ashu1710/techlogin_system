class ProjectType < ApplicationRecord
    has_many :project, dependent: :destroy
end
