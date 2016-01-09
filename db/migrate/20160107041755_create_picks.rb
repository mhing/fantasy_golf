class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.references :golfer, index: true, foreign_key: true
      t.references :tournament, index: true, foreign_key: true
      t.decimal :winnings

      t.timestamps null: false
    end
  end
end
