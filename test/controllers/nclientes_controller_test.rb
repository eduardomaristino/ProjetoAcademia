require 'test_helper'

class NclientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ncliente = nclientes(:one)
  end

  test "should get index" do
    get nclientes_url
    assert_response :success
  end

  test "should get new" do
    get new_ncliente_url
    assert_response :success
  end

  test "should create ncliente" do
    assert_difference('Ncliente.count') do
      post nclientes_url, params: { ncliente: { cpf: @ncliente.cpf, nome: @ncliente.nome } }
    end

    assert_redirected_to ncliente_url(Ncliente.last)
  end

  test "should show ncliente" do
    get ncliente_url(@ncliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_ncliente_url(@ncliente)
    assert_response :success
  end

  test "should update ncliente" do
    patch ncliente_url(@ncliente), params: { ncliente: { cpf: @ncliente.cpf, nome: @ncliente.nome } }
    assert_redirected_to ncliente_url(@ncliente)
  end

  test "should destroy ncliente" do
    assert_difference('Ncliente.count', -1) do
      delete ncliente_url(@ncliente)
    end

    assert_redirected_to nclientes_url
  end
end
