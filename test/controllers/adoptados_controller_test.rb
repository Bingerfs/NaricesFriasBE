require 'test_helper'

class AdoptadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adoptado = adoptados(:one)
  end

  test "should get index" do
    get adoptados_url, as: :json
    assert_response :success
  end

  test "should create adoptado" do
    assert_difference('Adoptado.count') do
      post adoptados_url, params: { adoptado: { edad: @adoptado.edad, esterilizacion: @adoptado.esterilizacion, genero: @adoptado.genero, tamagno: @adoptado.tamagno, telefono: @adoptado.telefono } }, as: :json
    end

    assert_response 201
  end

  test "should show adoptado" do
    get adoptado_url(@adoptado), as: :json
    assert_response :success
  end

  test "should update adoptado" do
    patch adoptado_url(@adoptado), params: { adoptado: { edad: @adoptado.edad, esterilizacion: @adoptado.esterilizacion, genero: @adoptado.genero, tamagno: @adoptado.tamagno, telefono: @adoptado.telefono } }, as: :json
    assert_response 200
  end

  test "should destroy adoptado" do
    assert_difference('Adoptado.count', -1) do
      delete adoptado_url(@adoptado), as: :json
    end

    assert_response 204
  end
end
