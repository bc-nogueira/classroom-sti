class CreateTurmas < ActiveRecord::Migration[5.2]
  def change
    create_table :turmas do |t|
      t.string :codigo
      t.string :periodo
      t.references :disciplina, foreign_key: true
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
