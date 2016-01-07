class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.boolean :major
      t.boolean :fedex_playoff

      t.timestamps null: false
    end
  end
end
