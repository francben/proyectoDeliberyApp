require 'test_helper'

class IngredientePlatosControllerTest < ActionController::TestCase
  setup do
    @ingrediente_plato = ingrediente_platos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingrediente_platos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingrediente_plato" do
    assert_difference('IngredientePlato.count') do
      post :create, ingrediente_plato: { cantidad: @ingrediente_plato.cantidad, ingrediente_id: @ingrediente_plato.ingrediente_id, plato_id: @ingrediente_plato.plato_id }
    end

    assert_redirected_to ingrediente_plato_path(assigns(:ingrediente_plato))
  end

  test "should show ingrediente_plato" do
    get :show, id: @ingrediente_plato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingrediente_plato
    assert_response :success
  end

  test "should update ingrediente_plato" do
    patch :update, id: @ingrediente_plato, ingrediente_plato: { cantidad: @ingrediente_plato.cantidad, ingrediente_id: @ingrediente_plato.ingrediente_id, plato_id: @ingrediente_plato.plato_id }
    assert_redirected_to ingrediente_plato_path(assigns(:ingrediente_plato))
  end

  test "should destroy ingrediente_plato" do
    assert_difference('IngredientePlato.count', -1) do
      delete :destroy, id: @ingrediente_plato
    end

    assert_redirected_to ingrediente_platos_path
  end
end
