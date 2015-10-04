class Task < ActiveRecord::Base
  enum status: [:uncomplete, :completed]
end
