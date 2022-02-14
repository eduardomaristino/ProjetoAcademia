require "application_system_test_case"

class NclientesTest < ApplicationSystemTestCase
  setup do
    @ncliente = nclientes(:one)
  end

  test "visiting the index" do
    visit nclientes_url
    assert_selector "h1", text: "Nclientes"
  end

  test "creating a Ncliente" do
    visit nclientes_url
    click_on "New Ncliente"

    fill_in "Cpf", with: @ncliente.cpf
    fill_in "Nome", with: @ncliente.nome
    click_on "Create Ncliente"

    assert_text "Ncliente was successfully created"
    click_on "Back"
  end

  test "updating a Ncliente" do
    visit nclientes_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @ncliente.cpf
    fill_in "Nome", with: @ncliente.nome
    click_on "Update Ncliente"

    assert_text "Ncliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Ncliente" do
    visit nclientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ncliente was successfully destroyed"
  end
end
