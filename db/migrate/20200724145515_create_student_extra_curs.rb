class CreateStudentExtraCurs < ActiveRecord::Migration[6.0]
  def change
    create_table :student_extra_curs do |t|
      t.integer :student_id
      t.integer :extra_cur_id
    end
  end
end
