class Task < ActiveRecord::Base
  validates :name, presence: true
  enum status: [:uncomplete, :completed]

  belongs_to :user
end
