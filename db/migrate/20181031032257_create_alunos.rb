class CreateAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :iduff
      t.string :matricula
      t.string :email

      t.timestamps
    end
  end
end
