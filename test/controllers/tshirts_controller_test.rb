require 'test_helper'

class TshirtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tshirt = tshirts(:one)
  end

  test "should get index" do
    get tshirts_url
    assert_response :success
  end

  test "should get new_u" do
    get new_tshirt_url
    assert_response :success
  end

  test "should create tshirt" do
    assert_difference('Tshirt.count') do
      post tshirts_url, params: { tshirt: { : @tshirt., : @tshirt., : @tshirt., category: @tshirt.category, color: @tshirt.color, description: @tshirt.description, image: @tshirt.image, price: @tshirt.price, stock: @tshirt.stock, titel: @tshirt.titel } }
    end

    assert_redirected_to tshirt_url(Tshirt.last)
  end

  test "should show_u tshirt" do
    get tshirt_url(@tshirt)
    assert_response :success
  end

  test "should get edit_u" do
    get edit_tshirt_url(@tshirt)
    assert_response :success
  end

  test "should update tshirt" do
    patch tshirt_url(@tshirt), params: { tshirt: { : @tshirt., : @tshirt., : @tshirt., category: @tshirt.category, color: @tshirt.color, description: @tshirt.description, image: @tshirt.image, price: @tshirt.price, stock: @tshirt.stock, titel: @tshirt.titel } }
    assert_redirected_to tshirt_url(@tshirt)
  end

  test "should destroy tshirt" do
    assert_difference('Tshirt.count', -1) do
      delete tshirt_url(@tshirt)
    end

    assert_redirected_to tshirts_url
  end
end
