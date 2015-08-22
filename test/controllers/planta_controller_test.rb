require 'test_helper'

class PlantaControllerTest < ActionController::TestCase
  setup do
    @plantum = planta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plantum" do
    assert_difference('Plantum.count') do
      post :create, plantum: { description: @plantum.description, name: @plantum.name, picture: @plantum.picture }
    end

    assert_redirected_to plantum_path(assigns(:plantum))
  end

  test "should show plantum" do
    get :show, id: @plantum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plantum
    assert_response :success
  end

  test "should update plantum" do
    patch :update, id: @plantum, plantum: { description: @plantum.description, name: @plantum.name, picture: @plantum.picture }
    assert_redirected_to plantum_path(assigns(:plantum))
  end

  test "should destroy plantum" do
    assert_difference('Plantum.count', -1) do
      delete :destroy, id: @plantum
    end

    assert_redirected_to planta_path
  end
end
