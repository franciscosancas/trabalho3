class CreateBoletims < ActiveRecord::Migration[5.1]
  def change
    create_table :boletims do |t|
      t.string :nome
      t.string :cpf
      t.integer :matricula
      t.string :endereco
      t.string :telefone
      t.date :data
      t.integer :cr_periodo
      t.string :materia
      t.float :nota_final
      t.float :carga_horaria
      t.float :creditos
      t.string :situacao_final

      t.timestamps
    end
  end
end
