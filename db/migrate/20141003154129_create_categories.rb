class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :heading
      t.integer :user_id
      t.timestamps
    end
  end
end
