require 'test_helper'

class DocentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @docente = docentes(:one)
  end

  test "should get index" do
    get docentes_url
    assert_response :success
  end

  test "should get new" do
    get new_docente_url
    assert_response :success
  end

  test "should create docente" do
    assert_difference('Docente.count') do
      post docentes_url, params: { docente: { apellido: @docente.apellido, barrio: @docente.barrio, celular: @docente.celular, direccion: @docente.direccion, email: @docente.email, fecha_n: @docente.fecha_n, genero: @docente.genero, identificacion: @docente.identificacion, nombre: @docente.nombre, telefono: @docente.telefono, tipo_identificacion: @docente.tipo_identificacion, tipo_sangre: @docente.tipo_sangre } }
    end

    assert_redirected_to docente_url(Docente.last)
  end

  test "should show docente" do
    get docente_url(@docente)
    assert_response :success
  end

  test "should get edit" do
    get edit_docente_url(@docente)
    assert_response :success
  end

  test "should update docente" do
    patch docente_url(@docente), params: { docente: { apellido: @docente.apellido, barrio: @docente.barrio, celular: @docente.celular, direccion: @docente.direccion, email: @docente.email, fecha_n: @docente.fecha_n, genero: @docente.genero, identificacion: @docente.identificacion, nombre: @docente.nombre, telefono: @docente.telefono, tipo_identificacion: @docente.tipo_identificacion, tipo_sangre: @docente.tipo_sangre } }
    assert_redirected_to docente_url(@docente)
  end

  test "should destroy docente" do
    assert_difference('Docente.count', -1) do
      delete docente_url(@docente)
    end

    assert_redirected_to docentes_url
  end
end
