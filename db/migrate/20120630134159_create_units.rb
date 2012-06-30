class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :unitname
      t.string :unitsymbol

      t.timestamps
    end
  end
end
