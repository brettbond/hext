require 'test_helper'

class HexCategoriesControllerTest < ActionController::TestCase
  setup do
    @hex_category = hex_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hex_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hex_category" do
    assert_difference('HexCategory.count') do
      post :create, hex_category: { hex_id: @hex_category.hex_id, name: @hex_category.name }
    end

    assert_redirected_to hex_category_path(assigns(:hex_category))
  end

  test "should show hex_category" do
    get :show, id: @hex_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hex_category
    assert_response :success
  end

  test "should update hex_category" do
    patch :update, id: @hex_category, hex_category: { hex_id: @hex_category.hex_id, name: @hex_category.name }
    assert_redirected_to hex_category_path(assigns(:hex_category))
  end

  test "should destroy hex_category" do
    assert_difference('HexCategory.count', -1) do
      delete :destroy, id: @hex_category
    end

    assert_redirected_to hex_categories_path
  end
end
