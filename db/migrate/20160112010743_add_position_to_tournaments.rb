class AddPositionToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :position, :integer
  end
end
