require 'test_helper'

class MaksControllerTest < ActionController::TestCase
  setup do
    @mak = maks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mak" do
    assert_difference('Mak.count') do
      post :create, mak: {  }
    end

    assert_redirected_to mak_path(assigns(:mak))
  end

  test "should show mak" do
    get :show, id: @mak
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mak
    assert_response :success
  end

  test "should update mak" do
    put :update, id: @mak, mak: {  }
    assert_redirected_to mak_path(assigns(:mak))
  end

  test "should destroy mak" do
    assert_difference('Mak.count', -1) do
      delete :destroy, id: @mak
    end

    assert_redirected_to maks_path
  end
end
