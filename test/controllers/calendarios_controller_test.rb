require 'test_helper'

class CalendariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calendario = calendarios(:one)
  end

  test "should get index" do
    get calendarios_url, as: :json
    assert_response :success
  end

  test "should create calendario" do
    assert_difference('Calendario.count') do
      post calendarios_url, params: { calendario: { descripcion: @calendario.descripcion, fecha: @calendario.fecha, titulo: @calendario.titulo } }, as: :json
    end

    assert_response 201
  end

  test "should show calendario" do
    get calendario_url(@calendario), as: :json
    assert_response :success
  end

  test "should update calendario" do
    patch calendario_url(@calendario), params: { calendario: { descripcion: @calendario.descripcion, fecha: @calendario.fecha, titulo: @calendario.titulo } }, as: :json
    assert_response 200
  end

  test "should destroy calendario" do
    assert_difference('Calendario.count', -1) do
      delete calendario_url(@calendario), as: :json
    end

    assert_response 204
  end
end
