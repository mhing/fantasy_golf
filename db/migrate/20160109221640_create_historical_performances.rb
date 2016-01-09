class CreateHistoricalPerformances < ActiveRecord::Migration
  def change
    create_table :historical_performances do |t|
      t.integer :place
      t.decimal :winnings
      t.string :type

      t.timestamps null: false
    end
  end
end
