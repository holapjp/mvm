require 'test_helper'

class AlumnosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alumno = alumnos(:one)
  end

  test "should get index" do
    get alumnos_url
    assert_response :success
  end

  test "should get new" do
    get new_alumno_url
    assert_response :success
  end

  test "should create alumno" do
    assert_difference('Alumno.count') do
      post alumnos_url, params: { alumno: { apellido: @alumno.apellido, barrio: @alumno.barrio, celular: @alumno.celular, direccion: @alumno.direccion, email: @alumno.email, fecha_n: @alumno.fecha_n, genero: @alumno.genero, identificacion: @alumno.identificacion, nombre: @alumno.nombre, telefono: @alumno.telefono, tipo_identificacion: @alumno.tipo_identificacion, tipo_sangre: @alumno.tipo_sangre } }
    end

    assert_redirected_to alumno_url(Alumno.last)
  end

  test "should show alumno" do
    get alumno_url(@alumno)
    assert_response :success
  end

  test "should get edit" do
    get edit_alumno_url(@alumno)
    assert_response :success
  end

  test "should update alumno" do
    patch alumno_url(@alumno), params: { alumno: { apellido: @alumno.apellido, barrio: @alumno.barrio, celular: @alumno.celular, direccion: @alumno.direccion, email: @alumno.email, fecha_n: @alumno.fecha_n, genero: @alumno.genero, identificacion: @alumno.identificacion, nombre: @alumno.nombre, telefono: @alumno.telefono, tipo_identificacion: @alumno.tipo_identificacion, tipo_sangre: @alumno.tipo_sangre } }
    assert_redirected_to alumno_url(@alumno)
  end

  test "should destroy alumno" do
    assert_difference('Alumno.count', -1) do
      delete alumno_url(@alumno)
    end

    assert_redirected_to alumnos_url
  end
end
