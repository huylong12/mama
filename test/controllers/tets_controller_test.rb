require 'test_helper'

class TetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tet = tets(:one)
  end

  test "should get index" do
    get tets_url
    assert_response :success
  end

  test "should get new" do
    get new_tet_url
    assert_response :success
  end

  test "should create tet" do
    assert_difference('Tet.count') do
      post tets_url, params: { tet: { name: @tet.name } }
    end

    assert_redirected_to tet_url(Tet.last)
  end

  test "should show tet" do
    get tet_url(@tet)
    assert_response :success
  end

  test "should get edit" do
    get edit_tet_url(@tet)
    assert_response :success
  end

  test "should update tet" do
    patch tet_url(@tet), params: { tet: { name: @tet.name } }
    assert_redirected_to tet_url(@tet)
  end

  test "should destroy tet" do
    assert_difference('Tet.count', -1) do
      delete tet_url(@tet)
    end

    assert_redirected_to tets_url
  end
end
