require "test_helper"

class DoctersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @docter = docters(:one)
  end

  test "should get index" do
    get docters_url
    assert_response :success
  end

  test "should get new" do
    get new_docter_url
    assert_response :success
  end

  test "should create docter" do
    assert_difference('Docter.count') do
      post docters_url, params: { docter: { contect_number: @docter.contect_number, email: @docter.email, name: @docter.name } }
    end

    assert_redirected_to docter_url(Docter.last)
  end

  test "should show docter" do
    get docter_url(@docter)
    assert_response :success
  end

  test "should get edit" do
    get edit_docter_url(@docter)
    assert_response :success
  end

  test "should update docter" do
    patch docter_url(@docter), params: { docter: { contect_number: @docter.contect_number, email: @docter.email, name: @docter.name } }
    assert_redirected_to docter_url(@docter)
  end

  test "should destroy docter" do
    assert_difference('Docter.count', -1) do
      delete docter_url(@docter)
    end

    assert_redirected_to docters_url
  end
end
