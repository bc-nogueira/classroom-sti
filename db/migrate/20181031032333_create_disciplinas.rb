class CreateDisciplinas < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplinas do |t|
      t.string :codigo
      t.string :nome

      t.timestamps
    end
  end
end
