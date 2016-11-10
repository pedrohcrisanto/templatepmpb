require 'test_helper'

class RelatorioPlanoDeVoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relatorio_plano_de_voo = relatorio_plano_de_voos(:one)
  end

  test "should get index" do
    get relatorio_plano_de_voos_url
    assert_response :success
  end

  test "should get new" do
    get new_relatorio_plano_de_voo_url
    assert_response :success
  end

  test "should create relatorio_plano_de_voo" do
    assert_difference('RelatorioPlanoDeVoo.count') do
      post relatorio_plano_de_voos_url, params: { relatorio_plano_de_voo: { conclusao: @relatorio_plano_de_voo.conclusao, condições_relevantes: @relatorio_plano_de_voo.condições_relevantes, discrep_anteriores_missao: @relatorio_plano_de_voo.discrep_anteriores_missao, discrep_obser_missao: @relatorio_plano_de_voo.discrep_obser_missao, id_pdv: @relatorio_plano_de_voo.id_pdv, id_relatorio_voo: @relatorio_plano_de_voo.id_relatorio_voo } }
    end

    assert_redirected_to relatorio_plano_de_voo_url(RelatorioPlanoDeVoo.last)
  end

  test "should show relatorio_plano_de_voo" do
    get relatorio_plano_de_voo_url(@relatorio_plano_de_voo)
    assert_response :success
  end

  test "should get edit" do
    get edit_relatorio_plano_de_voo_url(@relatorio_plano_de_voo)
    assert_response :success
  end

  test "should update relatorio_plano_de_voo" do
    patch relatorio_plano_de_voo_url(@relatorio_plano_de_voo), params: { relatorio_plano_de_voo: { conclusao: @relatorio_plano_de_voo.conclusao, condições_relevantes: @relatorio_plano_de_voo.condições_relevantes, discrep_anteriores_missao: @relatorio_plano_de_voo.discrep_anteriores_missao, discrep_obser_missao: @relatorio_plano_de_voo.discrep_obser_missao, id_pdv: @relatorio_plano_de_voo.id_pdv, id_relatorio_voo: @relatorio_plano_de_voo.id_relatorio_voo } }
    assert_redirected_to relatorio_plano_de_voo_url(@relatorio_plano_de_voo)
  end

  test "should destroy relatorio_plano_de_voo" do
    assert_difference('RelatorioPlanoDeVoo.count', -1) do
      delete relatorio_plano_de_voo_url(@relatorio_plano_de_voo)
    end

    assert_redirected_to relatorio_plano_de_voos_url
  end
end
