require 'test_helper'

class HistorialAdoptadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historial_adoptado = historial_adoptados(:one)
  end

  test "should get index" do
    get historial_adoptados_url, as: :json
    assert_response :success
  end

  test "should create historial_adoptado" do
    assert_difference('HistorialAdoptado.count') do
      post historial_adoptados_url, params: { historial_adoptado: { direccionDuegno: @historial_adoptado.direccionDuegno, nombreDuegno: @historial_adoptado.nombreDuegno, telefonoDuegno: @historial_adoptado.telefonoDuegno } }, as: :json
    end

    assert_response 201
  end

  test "should show historial_adoptado" do
    get historial_adoptado_url(@historial_adoptado), as: :json
    assert_response :success
  end

  test "should update historial_adoptado" do
    patch historial_adoptado_url(@historial_adoptado), params: { historial_adoptado: { direccionDuegno: @historial_adoptado.direccionDuegno, nombreDuegno: @historial_adoptado.nombreDuegno, telefonoDuegno: @historial_adoptado.telefonoDuegno } }, as: :json
    assert_response 200
  end

  test "should destroy historial_adoptado" do
    assert_difference('HistorialAdoptado.count', -1) do
      delete historial_adoptado_url(@historial_adoptado), as: :json
    end

    assert_response 204
  end
end
