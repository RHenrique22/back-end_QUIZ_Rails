require "test_helper"

class MuralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mural = murals(:one)
  end

  test "should get index" do
    get murals_url, as: :json
    assert_response :success
  end

  test "should create mural" do
    assert_difference('Mural.count') do
      post murals_url, params: { mural: { deslike: @mural.deslike, like: @mural.like, mensagem: @mural.mensagem, perfil: @mural.perfil } }, as: :json
    end

    assert_response 201
  end

  test "should show mural" do
    get mural_url(@mural), as: :json
    assert_response :success
  end

  test "should update mural" do
    patch mural_url(@mural), params: { mural: { deslike: @mural.deslike, like: @mural.like, mensagem: @mural.mensagem, perfil: @mural.perfil } }, as: :json
    assert_response 200
  end

  test "should destroy mural" do
    assert_difference('Mural.count', -1) do
      delete mural_url(@mural), as: :json
    end

    assert_response 204
  end
end
