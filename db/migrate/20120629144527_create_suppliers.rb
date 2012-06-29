class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.string :contactno
      t.string :contactperson
      t.string :email

      t.timestamps
    end
  end
end
