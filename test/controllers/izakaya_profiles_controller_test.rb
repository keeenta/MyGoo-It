require 'test_helper'

class IzakayaProfilesControllerTest < ActionController::TestCase
  setup do
    @izakaya_profile = izakaya_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:izakaya_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create izakaya_profile" do
    assert_difference('IzakayaProfile.count') do
      post :create, izakaya_profile: { access: @izakaya_profile.access, cigaret: @izakaya_profile.cigaret, close_time: @izakaya_profile.close_time, image: @izakaya_profile.image, izakaya_id: @izakaya_profile.izakaya_id, menus: @izakaya_profile.menus, open_time: @izakaya_profile.open_time, phone: @izakaya_profile.phone, place: @izakaya_profile.place }
    end

    assert_redirected_to izakaya_profile_path(assigns(:izakaya_profile))
  end

  test "should show izakaya_profile" do
    get :show, id: @izakaya_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @izakaya_profile
    assert_response :success
  end

  test "should update izakaya_profile" do
    patch :update, id: @izakaya_profile, izakaya_profile: { access: @izakaya_profile.access, cigaret: @izakaya_profile.cigaret, close_time: @izakaya_profile.close_time, image: @izakaya_profile.image, izakaya_id: @izakaya_profile.izakaya_id, menus: @izakaya_profile.menus, open_time: @izakaya_profile.open_time, phone: @izakaya_profile.phone, place: @izakaya_profile.place }
    assert_redirected_to izakaya_profile_path(assigns(:izakaya_profile))
  end

  test "should destroy izakaya_profile" do
    assert_difference('IzakayaProfile.count', -1) do
      delete :destroy, id: @izakaya_profile
    end

    assert_redirected_to izakaya_profiles_path
  end
end
