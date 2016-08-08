require 'test_helper'

class NewsletterListsControllerTest < ActionController::TestCase
  setup do
    @newsletter_list = newsletter_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newsletter_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newsletter_list" do
    assert_difference('NewsletterList.count') do
      post :create, newsletter_list: { added: @newsletter_list.added, email: @newsletter_list.email, name: @newsletter_list.name }
    end

    assert_redirected_to newsletter_list_path(assigns(:newsletter_list))
  end

  test "should show newsletter_list" do
    get :show, id: @newsletter_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newsletter_list
    assert_response :success
  end

  test "should update newsletter_list" do
    patch :update, id: @newsletter_list, newsletter_list: { added: @newsletter_list.added, email: @newsletter_list.email, name: @newsletter_list.name }
    assert_redirected_to newsletter_list_path(assigns(:newsletter_list))
  end

  test "should destroy newsletter_list" do
    assert_difference('NewsletterList.count', -1) do
      delete :destroy, id: @newsletter_list
    end

    assert_redirected_to newsletter_lists_path
  end
end
