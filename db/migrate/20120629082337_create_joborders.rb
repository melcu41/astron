class CreateJoborders < ActiveRecord::Migration
  def change
    create_table :joborders do |t|
      t.string :joborderid
      t.string :desc
      t.integer :customer_id

      t.timestamps
    end
  end
end
