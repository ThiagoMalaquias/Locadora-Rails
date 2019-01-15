require "application_system_test_case"

class PedidosTest < ApplicationSystemTestCase
  setup do
    @pedido = pedidos(:one)
  end

  test "visiting the index" do
    visit pedidos_url
    assert_selector "h1", text: "Pedidos"
  end

  test "creating a Pedido" do
    visit pedidos_url
    click_on "New Pedido"

    fill_in "Bairro", with: @pedido.bairro
    fill_in "Cep", with: @pedido.cep
    fill_in "Cidade", with: @pedido.cidade
    fill_in "Cpf", with: @pedido.cpf
    fill_in "Email", with: @pedido.email
    fill_in "Endereco", with: @pedido.endereco
    fill_in "Filmes pedido", with: @pedido.filmes_pedido
    fill_in "Name", with: @pedido.name
    fill_in "Telefone", with: @pedido.telefone
    click_on "Create Pedido"

    assert_text "Pedido was successfully created"
    click_on "Back"
  end

  test "updating a Pedido" do
    visit pedidos_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @pedido.bairro
    fill_in "Cep", with: @pedido.cep
    fill_in "Cidade", with: @pedido.cidade
    fill_in "Cpf", with: @pedido.cpf
    fill_in "Email", with: @pedido.email
    fill_in "Endereco", with: @pedido.endereco
    fill_in "Filmes pedido", with: @pedido.filmes_pedido
    fill_in "Name", with: @pedido.name
    fill_in "Telefone", with: @pedido.telefone
    click_on "Update Pedido"

    assert_text "Pedido was successfully updated"
    click_on "Back"
  end

  test "destroying a Pedido" do
    visit pedidos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pedido was successfully destroyed"
  end
end
