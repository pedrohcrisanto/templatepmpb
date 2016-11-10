require 'test_helper'

class PlanoDeVoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plano_de_voo = plano_de_voos(:one)
  end

  test "should get index" do
    get plano_de_voos_url
    assert_response :success
  end

  test "should get new" do
    get new_plano_de_voo_url
    assert_response :success
  end

  test "should create plano_de_voo" do
    assert_difference('PlanoDeVoo.count') do
      post plano_de_voos_url, params: { plano_de_voo: { altura_voo: @plano_de_voo.altura_voo, codigo_chamdarpa: @plano_de_voo.codigo_chamdarpa, comunicacao_ats: @plano_de_voo.comunicacao_ats, comunicacao_piloto_observador: @plano_de_voo.comunicacao_piloto_observador, data_voo: @plano_de_voo.data_voo, duracao_frequencia_voo: @plano_de_voo.duracao_frequencia_voo, enlace_pilotagem: @plano_de_voo.enlace_pilotagem, id_usuario: @plano_de_voo.id_usuario, local_decolagem: @plano_de_voo.local_decolagem, local_destino: @plano_de_voo.local_destino, localizao_estacao: @plano_de_voo.localizao_estacao, numero_estacao: @plano_de_voo.numero_estacao, objetivo_operacao: @plano_de_voo.objetivo_operacao, procedimento_transferencia: @plano_de_voo.procedimento_transferencia, regra_voo: @plano_de_voo.regra_voo, requisitos_decolagem: @plano_de_voo.requisitos_decolagem, requisitos_pouso: @plano_de_voo.requisitos_pouso, rota: @plano_de_voo.rota, tipo_operacao: @plano_de_voo.tipo_operacao } }
    end

    assert_redirected_to plano_de_voo_url(PlanoDeVoo.last)
  end

  test "should show plano_de_voo" do
    get plano_de_voo_url(@plano_de_voo)
    assert_response :success
  end

  test "should get edit" do
    get edit_plano_de_voo_url(@plano_de_voo)
    assert_response :success
  end

  test "should update plano_de_voo" do
    patch plano_de_voo_url(@plano_de_voo), params: { plano_de_voo: { altura_voo: @plano_de_voo.altura_voo, codigo_chamdarpa: @plano_de_voo.codigo_chamdarpa, comunicacao_ats: @plano_de_voo.comunicacao_ats, comunicacao_piloto_observador: @plano_de_voo.comunicacao_piloto_observador, data_voo: @plano_de_voo.data_voo, duracao_frequencia_voo: @plano_de_voo.duracao_frequencia_voo, enlace_pilotagem: @plano_de_voo.enlace_pilotagem, id_usuario: @plano_de_voo.id_usuario, local_decolagem: @plano_de_voo.local_decolagem, local_destino: @plano_de_voo.local_destino, localizao_estacao: @plano_de_voo.localizao_estacao, numero_estacao: @plano_de_voo.numero_estacao, objetivo_operacao: @plano_de_voo.objetivo_operacao, procedimento_transferencia: @plano_de_voo.procedimento_transferencia, regra_voo: @plano_de_voo.regra_voo, requisitos_decolagem: @plano_de_voo.requisitos_decolagem, requisitos_pouso: @plano_de_voo.requisitos_pouso, rota: @plano_de_voo.rota, tipo_operacao: @plano_de_voo.tipo_operacao } }
    assert_redirected_to plano_de_voo_url(@plano_de_voo)
  end

  test "should destroy plano_de_voo" do
    assert_difference('PlanoDeVoo.count', -1) do
      delete plano_de_voo_url(@plano_de_voo)
    end

    assert_redirected_to plano_de_voos_url
  end
end
