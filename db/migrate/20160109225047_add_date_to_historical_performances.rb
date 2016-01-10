class AddDateToHistoricalPerformances < ActiveRecord::Migration
  def change
    add_column :historical_performances, :date, :date
  end
end
