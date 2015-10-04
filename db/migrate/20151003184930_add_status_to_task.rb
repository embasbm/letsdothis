class AddStatusToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :status, :integer, null: false, default: 0
  end
end
