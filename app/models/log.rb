class Log < ApplicationRecord
  belongs_to :user
  belongs_to :project
  belongs_to :event
  
end
