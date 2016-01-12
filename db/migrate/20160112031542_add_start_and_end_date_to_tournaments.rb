class AddStartAndEndDateToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :start_date, :date
    add_column :tournaments, :end_date, :date
  end
end
