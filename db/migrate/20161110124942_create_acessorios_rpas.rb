class CreateAcessoriosRpas < ActiveRecord::Migration[5.0]
  def change
    create_table :acessorios_rpas do |t|
      t.string :nome
      t.string :cor
      t.text :descricao
      t.integer :id_usuario
      t.string :id_acessorio_intege
      t.integer :serial_num_bateria
      t.string :serial_sigla_bateria
      t.string :compativel_aeronave_bateria
      t.string :modelo_bateria
      t.string :material_bateria
      t.string :carga_bateria
      t.string :potencia_bateria
      t.string :tensao_bateria

      t.timestamps
    end
  end
end
