require 'test_helper'

class AcessoriosRpasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acessorios_rpa = acessorios_rpas(:one)
  end

  test "should get index" do
    get acessorios_rpas_url
    assert_response :success
  end

  test "should get new" do
    get new_acessorios_rpa_url
    assert_response :success
  end

  test "should create acessorios_rpa" do
    assert_difference('AcessoriosRpa.count') do
      post acessorios_rpas_url, params: { acessorios_rpa: { carga_bateria: @acessorios_rpa.carga_bateria, compativel_aeronave_bateria: @acessorios_rpa.compativel_aeronave_bateria, cor: @acessorios_rpa.cor, descricao: @acessorios_rpa.descricao, id_acessorio_intege: @acessorios_rpa.id_acessorio_intege, id_usuario: @acessorios_rpa.id_usuario, material_bateria: @acessorios_rpa.material_bateria, modelo_bateria: @acessorios_rpa.modelo_bateria, nome: @acessorios_rpa.nome, potencia_bateria: @acessorios_rpa.potencia_bateria, serial_num_bateria: @acessorios_rpa.serial_num_bateria, serial_sigla_bateria: @acessorios_rpa.serial_sigla_bateria, tensao_bateria: @acessorios_rpa.tensao_bateria } }
    end

    assert_redirected_to acessorios_rpa_url(AcessoriosRpa.last)
  end

  test "should show acessorios_rpa" do
    get acessorios_rpa_url(@acessorios_rpa)
    assert_response :success
  end

  test "should get edit" do
    get edit_acessorios_rpa_url(@acessorios_rpa)
    assert_response :success
  end

  test "should update acessorios_rpa" do
    patch acessorios_rpa_url(@acessorios_rpa), params: { acessorios_rpa: { carga_bateria: @acessorios_rpa.carga_bateria, compativel_aeronave_bateria: @acessorios_rpa.compativel_aeronave_bateria, cor: @acessorios_rpa.cor, descricao: @acessorios_rpa.descricao, id_acessorio_intege: @acessorios_rpa.id_acessorio_intege, id_usuario: @acessorios_rpa.id_usuario, material_bateria: @acessorios_rpa.material_bateria, modelo_bateria: @acessorios_rpa.modelo_bateria, nome: @acessorios_rpa.nome, potencia_bateria: @acessorios_rpa.potencia_bateria, serial_num_bateria: @acessorios_rpa.serial_num_bateria, serial_sigla_bateria: @acessorios_rpa.serial_sigla_bateria, tensao_bateria: @acessorios_rpa.tensao_bateria } }
    assert_redirected_to acessorios_rpa_url(@acessorios_rpa)
  end

  test "should destroy acessorios_rpa" do
    assert_difference('AcessoriosRpa.count', -1) do
      delete acessorios_rpa_url(@acessorios_rpa)
    end

    assert_redirected_to acessorios_rpas_url
  end
end
