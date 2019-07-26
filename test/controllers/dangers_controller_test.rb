require 'test_helper'

class DangersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @danger = dangers(:one)
  end

  test "should get index" do
    get dangers_url
    assert_response :success
  end

  test "should get new" do
    get new_danger_url
    assert_response :success
  end

  test "should create danger" do
    assert_difference('Danger.count') do
      post dangers_url, params: { danger: { description: @danger.description, first: @danger.first, last: @danger.last } }
    end

    assert_redirected_to danger_url(Danger.last)
  end

  test "should show danger" do
    get danger_url(@danger)
    assert_response :success
  end

  test "should get edit" do
    get edit_danger_url(@danger)
    assert_response :success
  end

  test "should update danger" do
    patch danger_url(@danger), params: { danger: { description: @danger.description, first: @danger.first, last: @danger.last } }
    assert_redirected_to danger_url(@danger)
  end

  test "should destroy danger" do
    assert_difference('Danger.count', -1) do
      delete danger_url(@danger)
    end

    assert_redirected_to dangers_url
  end
end
