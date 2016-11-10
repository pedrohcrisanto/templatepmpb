require 'test_helper'

class CadastroEquipeRpasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadastro_equipe_rpa = cadastro_equipe_rpas(:one)
  end

  test "should get index" do
    get cadastro_equipe_rpas_url
    assert_response :success
  end

  test "should get new" do
    get new_cadastro_equipe_rpa_url
    assert_response :success
  end

  test "should create cadastro_equipe_rpa" do
    assert_difference('CadastroEquipeRpa.count') do
      post cadastro_equipe_rpas_url, params: { cadastro_equipe_rpa: { anexar_copia: @cadastro_equipe_rpa.anexar_copia, experiencia_pilito_observador: @cadastro_equipe_rpa.experiencia_pilito_observador, id_erpa: @cadastro_equipe_rpa.id_erpa, id_usuario: @cadastro_equipe_rpa.id_usuario, nome: @cadastro_equipe_rpa.nome, numero_licenca_certificado: @cadastro_equipe_rpa.numero_licenca_certificado, tipo_licenca_certificado: @cadastro_equipe_rpa.tipo_licenca_certificado } }
    end

    assert_redirected_to cadastro_equipe_rpa_url(CadastroEquipeRpa.last)
  end

  test "should show cadastro_equipe_rpa" do
    get cadastro_equipe_rpa_url(@cadastro_equipe_rpa)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadastro_equipe_rpa_url(@cadastro_equipe_rpa)
    assert_response :success
  end

  test "should update cadastro_equipe_rpa" do
    patch cadastro_equipe_rpa_url(@cadastro_equipe_rpa), params: { cadastro_equipe_rpa: { anexar_copia: @cadastro_equipe_rpa.anexar_copia, experiencia_pilito_observador: @cadastro_equipe_rpa.experiencia_pilito_observador, id_erpa: @cadastro_equipe_rpa.id_erpa, id_usuario: @cadastro_equipe_rpa.id_usuario, nome: @cadastro_equipe_rpa.nome, numero_licenca_certificado: @cadastro_equipe_rpa.numero_licenca_certificado, tipo_licenca_certificado: @cadastro_equipe_rpa.tipo_licenca_certificado } }
    assert_redirected_to cadastro_equipe_rpa_url(@cadastro_equipe_rpa)
  end

  test "should destroy cadastro_equipe_rpa" do
    assert_difference('CadastroEquipeRpa.count', -1) do
      delete cadastro_equipe_rpa_url(@cadastro_equipe_rpa)
    end

    assert_redirected_to cadastro_equipe_rpas_url
  end
end
