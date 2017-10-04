class CreateResultadoconsulta < ActiveRecord::Migration[5.1]
  def change
    create_table :resultadoconsulta do |t|
      t.string :resultado

      t.timestamps
    end
  end
end
