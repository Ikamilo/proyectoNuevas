require 'test_helper'

class AditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adition = aditions(:one)
  end

  test "should get index" do
    get aditions_url
    assert_response :success
  end

  test "should get new" do
    get new_adition_url
    assert_response :success
  end

  test "should create adition" do
    assert_difference('Adition.count') do
      post aditions_url, params: { adition: { ingredient_id: @adition.ingredient_id, pizza_id: @adition.pizza_id } }
    end

    assert_redirected_to adition_url(Adition.last)
  end

  test "should show adition" do
    get adition_url(@adition)
    assert_response :success
  end

  test "should get edit" do
    get edit_adition_url(@adition)
    assert_response :success
  end

  test "should update adition" do
    patch adition_url(@adition), params: { adition: { ingredient_id: @adition.ingredient_id, pizza_id: @adition.pizza_id } }
    assert_redirected_to adition_url(@adition)
  end

  test "should destroy adition" do
    assert_difference('Adition.count', -1) do
      delete adition_url(@adition)
    end

    assert_redirected_to aditions_url
  end
end
