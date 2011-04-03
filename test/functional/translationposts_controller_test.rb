require 'test_helper'

class TranslationpostsControllerTest < ActionController::TestCase
  setup do
    @translationpost = translationposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:translationposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create translationpost" do
    assert_difference('Translationpost.count') do
      post :create, :translationpost => @translationpost.attributes
    end

    assert_redirected_to translationpost_path(assigns(:translationpost))
  end

  test "should show translationpost" do
    get :show, :id => @translationpost.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @translationpost.to_param
    assert_response :success
  end

  test "should update translationpost" do
    put :update, :id => @translationpost.to_param, :translationpost => @translationpost.attributes
    assert_redirected_to translationpost_path(assigns(:translationpost))
  end

  test "should destroy translationpost" do
    assert_difference('Translationpost.count', -1) do
      delete :destroy, :id => @translationpost.to_param
    end

    assert_redirected_to translationposts_path
  end
end
