class AddBackupToPicks < ActiveRecord::Migration
  def change
    add_column :picks, :backup, :boolean
  end
end
