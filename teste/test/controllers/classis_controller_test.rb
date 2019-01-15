require 'test_helper'

class ClassisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classi = classis(:one)
  end

  test "should get index" do
    get classis_url
    assert_response :success
  end

  test "should get new" do
    get new_classi_url
    assert_response :success
  end

  test "should create classi" do
    assert_difference('Classi.count') do
      post classis_url, params: { classi: { nome: @classi.nome } }
    end

    assert_redirected_to classi_url(Classi.last)
  end

  test "should show classi" do
    get classi_url(@classi)
    assert_response :success
  end

  test "should get edit" do
    get edit_classi_url(@classi)
    assert_response :success
  end

  test "should update classi" do
    patch classi_url(@classi), params: { classi: { nome: @classi.nome } }
    assert_redirected_to classi_url(@classi)
  end

  test "should destroy classi" do
    assert_difference('Classi.count', -1) do
      delete classi_url(@classi)
    end

    assert_redirected_to classis_url
  end
end
