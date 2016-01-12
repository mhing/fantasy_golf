class ChangeColumnDefaultForPicksBackup < ActiveRecord::Migration
  def up
    change_column_default :picks, :backup, false
  end

  def down
    change_column_default :picks, :backup, nil
  end
end
