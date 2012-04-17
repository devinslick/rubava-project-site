require 'test_helper'

class RubavaTeamMembersControllerTest < ActionController::TestCase
  setup do
    @rubava_team_member = rubava_team_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rubava_team_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rubava_team_member" do
    assert_difference('RubavaTeamMember.count') do
      post :create, :rubava_team_member => @rubava_team_member.attributes
    end

    assert_redirected_to rubava_team_member_path(assigns(:rubava_team_member))
  end

  test "should show rubava_team_member" do
    get :show, :id => @rubava_team_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @rubava_team_member
    assert_response :success
  end

  test "should update rubava_team_member" do
    put :update, :id => @rubava_team_member, :rubava_team_member => @rubava_team_member.attributes
    assert_redirected_to rubava_team_member_path(assigns(:rubava_team_member))
  end

  test "should destroy rubava_team_member" do
    assert_difference('RubavaTeamMember.count', -1) do
      delete :destroy, :id => @rubava_team_member
    end

    assert_redirected_to rubava_team_members_path
  end
end
