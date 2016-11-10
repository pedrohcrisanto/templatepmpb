class CreatePlanoDeVoos < ActiveRecord::Migration[5.0]
  def change
    create_table :plano_de_voos do |t|
      t.text :objetivo_operacao
      t.string :codigo_chamdarpa
      t.datetime :data_voo
      t.string :duracao_frequencia_voo
      t.text :regra_voo
      t.string :tipo_operacao
      t.string :numero_estacao
      t.string :localizao_estacao
      t.text :procedimento_transferencia
      t.string :local_decolagem
      t.string :local_destino
      t.text :requisitos_decolagem
      t.text :requisitos_pouso
      t.text :rota
      t.integer :altura_voo
      t.text :comunicacao_ats
      t.text :enlace_pilotagem
      t.text :comunicacao_piloto_observador
      t.integer :id_usuario

      t.timestamps
    end
  end
end
