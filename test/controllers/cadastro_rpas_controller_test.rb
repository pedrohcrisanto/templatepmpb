require 'test_helper'

class CadastroRpasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadastro_rpa = cadastro_rpas(:one)
  end

  test "should get index" do
    get cadastro_rpas_url
    assert_response :success
  end

  test "should get new" do
    get new_cadastro_rpa_url
    assert_response :success
  end

  test "should create cadastro_rpa" do
    assert_difference('CadastroRpa.count') do
      post cadastro_rpas_url, params: { cadastro_rpa: { anexar_certificado_requerente: @cadastro_rpa.anexar_certificado_requerente, anexar_licensa_estacao: @cadastro_rpa.anexar_licensa_estacao, anexo_copia_certificado_rpa: @cadastro_rpa.anexo_copia_certificado_rpa, anexo_copia_matricula_rpa: @cadastro_rpa.anexo_copia_matricula_rpa, descricao_material: @cadastro_rpa.descricao_material, fabrica: @cadastro_rpa.fabrica, matricula_rpa: @cadastro_rpa.matricula_rpa, modelo: @cadastro_rpa.modelo, num_certificado_estacao: @cadastro_rpa.num_certificado_estacao, numero_certificado_requerente: @cadastro_rpa.numero_certificado_requerente, pais_registro_rpa: @cadastro_rpa.pais_registro_rpa, propulsao: @cadastro_rpa.propulsao, serial: @cadastro_rpa.serial, tipo_certificado_estacao: @cadastro_rpa.tipo_certificado_estacao, tipo_certificado_requerente: @cadastro_rpa.tipo_certificado_requerente } }
    end

    assert_redirected_to cadastro_rpa_url(CadastroRpa.last)
  end

  test "should show cadastro_rpa" do
    get cadastro_rpa_url(@cadastro_rpa)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadastro_rpa_url(@cadastro_rpa)
    assert_response :success
  end

  test "should update cadastro_rpa" do
    patch cadastro_rpa_url(@cadastro_rpa), params: { cadastro_rpa: { anexar_certificado_requerente: @cadastro_rpa.anexar_certificado_requerente, anexar_licensa_estacao: @cadastro_rpa.anexar_licensa_estacao, anexo_copia_certificado_rpa: @cadastro_rpa.anexo_copia_certificado_rpa, anexo_copia_matricula_rpa: @cadastro_rpa.anexo_copia_matricula_rpa, descricao_material: @cadastro_rpa.descricao_material, fabrica: @cadastro_rpa.fabrica, matricula_rpa: @cadastro_rpa.matricula_rpa, modelo: @cadastro_rpa.modelo, num_certificado_estacao: @cadastro_rpa.num_certificado_estacao, numero_certificado_requerente: @cadastro_rpa.numero_certificado_requerente, pais_registro_rpa: @cadastro_rpa.pais_registro_rpa, propulsao: @cadastro_rpa.propulsao, serial: @cadastro_rpa.serial, tipo_certificado_estacao: @cadastro_rpa.tipo_certificado_estacao, tipo_certificado_requerente: @cadastro_rpa.tipo_certificado_requerente } }
    assert_redirected_to cadastro_rpa_url(@cadastro_rpa)
  end

  test "should destroy cadastro_rpa" do
    assert_difference('CadastroRpa.count', -1) do
      delete cadastro_rpa_url(@cadastro_rpa)
    end

    assert_redirected_to cadastro_rpas_url
  end
end
