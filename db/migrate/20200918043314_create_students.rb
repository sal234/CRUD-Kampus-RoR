class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :kelas
      t.string :nohp
      t.string :jurusan
      t.string :universitas
    end
  end
end
