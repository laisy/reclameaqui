class CreateReclamacaos < ActiveRecord::Migration[6.0]
  def change
    create_table :reclamacaos do |t|
      t.string :titulo
      t.text :texto
      t.string :cat_problema
      t.string :nome_empresa
      t.integer :usuario_id

      t.timestamps
    end
  end
end
