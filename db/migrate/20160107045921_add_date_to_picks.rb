class AddDateToPicks < ActiveRecord::Migration
  def change
    add_column :picks, :date, :date
  end
end
