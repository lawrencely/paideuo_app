class AddColumnToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :check_sent, :boolean, default: false
  end
end
