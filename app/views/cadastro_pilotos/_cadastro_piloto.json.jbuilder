json.extract! cadastro_piloto, :id, :nome, :tipo_licenca_certificado, :anexar_copia, :experiencia_piloto_observador, :id_usuario, :id_erpa, :created_at, :updated_at
json.url cadastro_piloto_url(cadastro_piloto, format: :json)