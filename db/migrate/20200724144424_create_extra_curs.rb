class CreateExtraCurs < ActiveRecord::Migration[6.0]
  def change
    create_table :extra_curs do |t|
      t.string :name
      t.string :activity
      t.integer :competitive 
    end
  end
end
