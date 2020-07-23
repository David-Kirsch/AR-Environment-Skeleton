class UpdateColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :students, :teacher, :teacher_id
  end
end
