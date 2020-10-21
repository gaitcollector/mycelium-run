require 'test_helper'

class MyceliaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mycelium = mycelia(:one)
  end

  test "should get index" do
    get mycelia_url
    assert_response :success
  end

  test "should get new" do
    get new_mycelium_url
    assert_response :success
  end

  test "should create mycelium" do
    assert_difference('Mycelium.count') do
      post mycelia_url, params: { mycelium: { name: @mycelium.name } }
    end

    assert_redirected_to mycelium_url(Mycelium.last)
  end

  test "should show mycelium" do
    get mycelium_url(@mycelium)
    assert_response :success
  end

  test "should get edit" do
    get edit_mycelium_url(@mycelium)
    assert_response :success
  end

  test "should update mycelium" do
    patch mycelium_url(@mycelium), params: { mycelium: { name: @mycelium.name } }
    assert_redirected_to mycelium_url(@mycelium)
  end

  test "should destroy mycelium" do
    assert_difference('Mycelium.count', -1) do
      delete mycelium_url(@mycelium)
    end

    assert_redirected_to mycelia_url
  end
end
