require "application_system_test_case"

class AcudientesTest < ApplicationSystemTestCase
  setup do
    @acudiente = acudientes(:one)
  end

  test "visiting the index" do
    visit acudientes_url
    assert_selector "h1", text: "Acudientes"
  end

  test "creating a Acudiente" do
    visit acudientes_url
    click_on "New Acudiente"

    fill_in "Apellido", with: @acudiente.apellido
    fill_in "Barrio", with: @acudiente.barrio
    fill_in "Celular", with: @acudiente.celular
    fill_in "Direccion", with: @acudiente.direccion
    fill_in "Email", with: @acudiente.email
    fill_in "Fecha N", with: @acudiente.fecha_n
    fill_in "Genero", with: @acudiente.genero
    fill_in "Identificacion", with: @acudiente.identificacion
    fill_in "Nombre", with: @acudiente.nombre
    fill_in "Parentesco", with: @acudiente.parentesco
    fill_in "Telefono", with: @acudiente.telefono
    fill_in "Tipo Identificacion", with: @acudiente.tipo_identificacion
    fill_in "Tipo Sangre", with: @acudiente.tipo_sangre
    click_on "Create Acudiente"

    assert_text "Acudiente was successfully created"
    click_on "Back"
  end

  test "updating a Acudiente" do
    visit acudientes_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @acudiente.apellido
    fill_in "Barrio", with: @acudiente.barrio
    fill_in "Celular", with: @acudiente.celular
    fill_in "Direccion", with: @acudiente.direccion
    fill_in "Email", with: @acudiente.email
    fill_in "Fecha N", with: @acudiente.fecha_n
    fill_in "Genero", with: @acudiente.genero
    fill_in "Identificacion", with: @acudiente.identificacion
    fill_in "Nombre", with: @acudiente.nombre
    fill_in "Parentesco", with: @acudiente.parentesco
    fill_in "Telefono", with: @acudiente.telefono
    fill_in "Tipo Identificacion", with: @acudiente.tipo_identificacion
    fill_in "Tipo Sangre", with: @acudiente.tipo_sangre
    click_on "Update Acudiente"

    assert_text "Acudiente was successfully updated"
    click_on "Back"
  end

  test "destroying a Acudiente" do
    visit acudientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Acudiente was successfully destroyed"
  end
end
