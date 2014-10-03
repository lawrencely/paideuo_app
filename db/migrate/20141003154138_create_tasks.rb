class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :paideuo
      t.integer :category_id
      t.integer :partner_id
      t.date :datetime
      t.timestamps
    end
  end
end
