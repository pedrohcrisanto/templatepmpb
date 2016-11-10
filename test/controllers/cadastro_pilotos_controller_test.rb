require 'test_helper'

class CadastroPilotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadastro_piloto = cadastro_pilotos(:one)
  end

  test "should get index" do
    get cadastro_pilotos_url
    assert_response :success
  end

  test "should get new" do
    get new_cadastro_piloto_url
    assert_response :success
  end

  test "should create cadastro_piloto" do
    assert_difference('CadastroPiloto.count') do
      post cadastro_pilotos_url, params: { cadastro_piloto: { anexar_copia: @cadastro_piloto.anexar_copia, experiencia_piloto_observador: @cadastro_piloto.experiencia_piloto_observador, id_erpa: @cadastro_piloto.id_erpa, id_usuario: @cadastro_piloto.id_usuario, nome: @cadastro_piloto.nome, tipo_licenca_certificado: @cadastro_piloto.tipo_licenca_certificado } }
    end

    assert_redirected_to cadastro_piloto_url(CadastroPiloto.last)
  end

  test "should show cadastro_piloto" do
    get cadastro_piloto_url(@cadastro_piloto)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadastro_piloto_url(@cadastro_piloto)
    assert_response :success
  end

  test "should update cadastro_piloto" do
    patch cadastro_piloto_url(@cadastro_piloto), params: { cadastro_piloto: { anexar_copia: @cadastro_piloto.anexar_copia, experiencia_piloto_observador: @cadastro_piloto.experiencia_piloto_observador, id_erpa: @cadastro_piloto.id_erpa, id_usuario: @cadastro_piloto.id_usuario, nome: @cadastro_piloto.nome, tipo_licenca_certificado: @cadastro_piloto.tipo_licenca_certificado } }
    assert_redirected_to cadastro_piloto_url(@cadastro_piloto)
  end

  test "should destroy cadastro_piloto" do
    assert_difference('CadastroPiloto.count', -1) do
      delete cadastro_piloto_url(@cadastro_piloto)
    end

    assert_redirected_to cadastro_pilotos_url
  end
end
