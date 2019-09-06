require 'test_helper'

class SharedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shared = shareds(:one)
  end

  test "should get index" do
    get shareds_url
    assert_response :success
  end

  test "should get new" do
    get new_shared_url
    assert_response :success
  end

  test "should create shared" do
    assert_difference('Shared.count') do
      post shareds_url, params: { shared: { post_id: @shared.post_id, text: @shared.text, user_id: @shared.user_id } }
    end

    assert_redirected_to shared_url(Shared.last)
  end

  test "should show shared" do
    get shared_url(@shared)
    assert_response :success
  end

  test "should get edit" do
    get edit_shared_url(@shared)
    assert_response :success
  end

  test "should update shared" do
    patch shared_url(@shared), params: { shared: { post_id: @shared.post_id, text: @shared.text, user_id: @shared.user_id } }
    assert_redirected_to shared_url(@shared)
  end

  test "should destroy shared" do
    assert_difference('Shared.count', -1) do
      delete shared_url(@shared)
    end

    assert_redirected_to shareds_url
  end
end
