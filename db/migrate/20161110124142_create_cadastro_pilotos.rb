class CreateCadastroPilotos < ActiveRecord::Migration[5.0]
  def change
    create_table :cadastro_pilotos do |t|
      t.string :nome
      t.string :tipo_licenca_certificado
      t.binary :anexar_copia
      t.text :experiencia_piloto_observador
      t.integer :id_usuario
      t.integer :id_erpa

      t.timestamps
    end
  end
end
