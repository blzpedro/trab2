require "application_system_test_case"

class DiariosTest < ApplicationSystemTestCase
  setup do
    @diario = diarios(:one)
  end

  test "visiting the index" do
    visit diarios_url
    assert_selector "h1", text: "Diarios"
  end

  test "creating a Diario" do
    visit diarios_url
    click_on "New Diario"

    fill_in "Corpo", with: @diario.corpo
    fill_in "Titulo", with: @diario.titulo
    click_on "Create Diario"

    assert_text "Nova publicação criada."
    click_on "Back"
  end

  test "updating a Diario" do
    visit diarios_url
    click_on "Edit", match: :first

    fill_in "Corpo", with: @diario.corpo
    fill_in "Titulo", with: @diario.titulo
    click_on "Update Diario"

    assert_text "Noticia atualizada!"
    click_on "Back"
  end

  test "destroying a Diario" do
    visit diarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Noticia deletada!"
  end
end
