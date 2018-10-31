class CreateProfessores < ActiveRecord::Migration[5.2]
  def change
    create_table :professores do |t|
      t.string :nome
      t.string :iduff
      t.string :siape
      t.string :email

      t.timestamps
    end
  end
end
