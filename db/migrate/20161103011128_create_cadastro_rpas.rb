class CreateCadastroRpas < ActiveRecord::Migration[5.0]
  def change
    create_table :cadastro_rpas do |t|
      t.string :fabrica
      t.string :modelo
      t.string :propulsao
      t.string :serial
      t.text :descricao_material
      t.integer :numero_certificado_requerente
      t.integer :tipo_certificado_requerente
      t.binary :anexar_certificado_requerente
      t.string :pais_registro_rpa
      t.string :matricula_rpa
      t.binary :anexo_copia_certificado_rpa
      t.binary :anexo_copia_matricula_rpa
      t.integer :num_certificado_estacao
      t.string :tipo_certificado_estacao
      t.binary :anexar_licensa_estacao

      t.timestamps
    end
  end
end
