class UpdateStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :teacher,:integer
  end
end
