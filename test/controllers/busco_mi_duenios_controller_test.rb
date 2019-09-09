require 'test_helper'

class BuscoMiDueniosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @busco_mi_duenio = busco_mi_duenios(:one)
  end

  test "should get index" do
    get busco_mi_duenios_url, as: :json
    assert_response :success
  end

  test "should create busco_mi_duenio" do
    assert_difference('BuscoMiDuenio.count') do
      post busco_mi_duenios_url, params: { busco_mi_duenio: { edad: @busco_mi_duenio.edad, genero: @busco_mi_duenio.genero, raza: @busco_mi_duenio.raza, string: @busco_mi_duenio.string, tamanio: @busco_mi_duenio.tamanio, telefono: @busco_mi_duenio.telefono } }, as: :json
    end

    assert_response 201
  end

  test "should show busco_mi_duenio" do
    get busco_mi_duenio_url(@busco_mi_duenio), as: :json
    assert_response :success
  end

  test "should update busco_mi_duenio" do
    patch busco_mi_duenio_url(@busco_mi_duenio), params: { busco_mi_duenio: { edad: @busco_mi_duenio.edad, genero: @busco_mi_duenio.genero, raza: @busco_mi_duenio.raza, string: @busco_mi_duenio.string, tamanio: @busco_mi_duenio.tamanio, telefono: @busco_mi_duenio.telefono } }, as: :json
    assert_response 200
  end

  test "should destroy busco_mi_duenio" do
    assert_difference('BuscoMiDuenio.count', -1) do
      delete busco_mi_duenio_url(@busco_mi_duenio), as: :json
    end

    assert_response 204
  end
end
