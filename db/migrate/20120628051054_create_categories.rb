class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :desc
      t.integer :num1
      t.integer :num2
      t.string :user1
      t.string :user2

      t.timestamps
    end
  end
end
