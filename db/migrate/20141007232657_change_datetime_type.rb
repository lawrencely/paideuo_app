class ChangeDatetimeType < ActiveRecord::Migration
  def change
    change_column :tasks, :datetime, :datetime
  end
end
