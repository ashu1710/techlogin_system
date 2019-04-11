class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        has_many :permissions, dependent: :destroy
        has_many :project_users, dependent: :destroy
        has_many :task_times, dependent: :destroy
        has_many :logs, dependent: :destroy
        has_many :tasks, dependent: :destroy
        has_many :project_documents, dependent: :destroy
        has_many :comments, dependent: :destroy
        has_one :salary, dependent: :destroy
        has_many :leaves, dependent: :destroy
        has_many :eod_performances, dependent: :destroy
        has_many :histories, dependent: :destroy
        has_many :events, dependent: :destroy
        
end
