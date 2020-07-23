class RenameTableName < ActiveRecord::Migration[6.0]
  def change
    rename_table :grade_level, :grade_levels
  end
end
