require "application_system_test_case"

class DocentesTest < ApplicationSystemTestCase
  setup do
    @docente = docentes(:one)
  end

  test "visiting the index" do
    visit docentes_url
    assert_selector "h1", text: "Docentes"
  end

  test "creating a Docente" do
    visit docentes_url
    click_on "New Docente"

    fill_in "Apellido", with: @docente.apellido
    fill_in "Barrio", with: @docente.barrio
    fill_in "Celular", with: @docente.celular
    fill_in "Direccion", with: @docente.direccion
    fill_in "Email", with: @docente.email
    fill_in "Fecha N", with: @docente.fecha_n
    fill_in "Genero", with: @docente.genero
    fill_in "Identificacion", with: @docente.identificacion
    fill_in "Nombre", with: @docente.nombre
    fill_in "Telefono", with: @docente.telefono
    fill_in "Tipo Identificacion", with: @docente.tipo_identificacion
    fill_in "Tipo Sangre", with: @docente.tipo_sangre
    click_on "Create Docente"

    assert_text "Docente was successfully created"
    click_on "Back"
  end

  test "updating a Docente" do
    visit docentes_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @docente.apellido
    fill_in "Barrio", with: @docente.barrio
    fill_in "Celular", with: @docente.celular
    fill_in "Direccion", with: @docente.direccion
    fill_in "Email", with: @docente.email
    fill_in "Fecha N", with: @docente.fecha_n
    fill_in "Genero", with: @docente.genero
    fill_in "Identificacion", with: @docente.identificacion
    fill_in "Nombre", with: @docente.nombre
    fill_in "Telefono", with: @docente.telefono
    fill_in "Tipo Identificacion", with: @docente.tipo_identificacion
    fill_in "Tipo Sangre", with: @docente.tipo_sangre
    click_on "Update Docente"

    assert_text "Docente was successfully updated"
    click_on "Back"
  end

  test "destroying a Docente" do
    visit docentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Docente was successfully destroyed"
  end
end
