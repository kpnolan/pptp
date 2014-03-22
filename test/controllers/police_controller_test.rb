require 'test_helper'

class PoliceControllerTest < ActionController::TestCase
  setup do
    @police = police(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:police)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create police" do
    assert_difference('Police.count') do
      post :create, police: { department_id: @police.department_id, first_name: @police.first_name, last_name: @police.last_name, precinct_id: @police.precinct_id, svcid_badge: @police.svcid_badge, title_id: @police.title_id, year_verified: @police.year_verified }
    end

    assert_redirected_to police_path(assigns(:police))
  end

  test "should show police" do
    get :show, id: @police
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @police
    assert_response :success
  end

  test "should update police" do
    patch :update, id: @police, police: { department_id: @police.department_id, first_name: @police.first_name, last_name: @police.last_name, precinct_id: @police.precinct_id, svcid_badge: @police.svcid_badge, title_id: @police.title_id, year_verified: @police.year_verified }
    assert_redirected_to police_path(assigns(:police))
  end

  test "should destroy police" do
    assert_difference('Police.count', -1) do
      delete :destroy, id: @police
    end

    assert_redirected_to police_index_path
  end
end
