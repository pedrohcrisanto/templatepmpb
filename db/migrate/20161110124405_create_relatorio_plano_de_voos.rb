class CreateRelatorioPlanoDeVoos < ActiveRecord::Migration[5.0]
  def change
    create_table :relatorio_plano_de_voos do |t|
      t.string :condições_relevantes
      t.string :discrep_obser_missao
      t.string :discrep_anteriores_missao
      t.string :conclusao
      t.integer :id_pdv
      t.integer :id_relatorio_voo

      t.timestamps
    end
  end
end
