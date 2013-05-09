require 'test_helper'

class PhotoidsControllerTest < ActionController::TestCase
  setup do
    @photoid = photoids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photoids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photoid" do
    assert_difference('Photoid.count') do
      post :create, photoid: { photoname: @photoid.photoname, photopath: @photoid.photopath }
    end

    assert_redirected_to photoid_path(assigns(:photoid))
  end

  test "should show photoid" do
    get :show, id: @photoid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photoid
    assert_response :success
  end

  test "should update photoid" do
    put :update, id: @photoid, photoid: { photoname: @photoid.photoname, photopath: @photoid.photopath }
    assert_redirected_to photoid_path(assigns(:photoid))
  end

  test "should destroy photoid" do
    assert_difference('Photoid.count', -1) do
      delete :destroy, id: @photoid
    end

    assert_redirected_to photoids_path
  end
end
