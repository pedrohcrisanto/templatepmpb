json.extract! plano_de_voo, :id, :objetivo_operacao, :codigo_chamdarpa, :data_voo, :duracao_frequencia_voo, :regra_voo, :tipo_operacao, :numero_estacao, :localizao_estacao, :procedimento_transferencia, :local_decolagem, :local_destino, :requisitos_decolagem, :requisitos_pouso, :rota, :altura_voo, :comunicacao_ats, :enlace_pilotagem, :comunicacao_piloto_observador, :id_usuario, :created_at, :updated_at
json.url plano_de_voo_url(plano_de_voo, format: :json)