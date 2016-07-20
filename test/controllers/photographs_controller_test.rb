require 'test_helper'

class PhotographsControllerTest < ActionController::TestCase
  setup do
    @photograph = photographs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photographs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photograph" do
    assert_difference('Photograph.count') do
      post :create, photograph: { image: @photograph.image, name: @photograph.name, user_id: @photograph.user_id }
    end

    assert_redirected_to photograph_path(assigns(:photograph))
  end

  test "should show photograph" do
    get :show, id: @photograph
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photograph
    assert_response :success
  end

  test "should update photograph" do
    patch :update, id: @photograph, photograph: { image: @photograph.image, name: @photograph.name, user_id: @photograph.user_id }
    assert_redirected_to photograph_path(assigns(:photograph))
  end

  test "should destroy photograph" do
    assert_difference('Photograph.count', -1) do
      delete :destroy, id: @photograph
    end

    assert_redirected_to photographs_path
  end
end
