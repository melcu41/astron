class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.string :operatorname
      t.string :operatorsymbol
      t.integer :ratepercent
      t.integer :rateamt

      t.timestamps
    end
  end
end
