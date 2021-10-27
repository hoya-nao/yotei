require "test_helper"

class TamesisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tamesi = tamesis(:one)
  end

  test "should get index" do
    get tamesis_url
    assert_response :success
  end

  test "should get new" do
    get new_tamesi_url
    assert_response :success
  end

  test "should create tamesi" do
    assert_difference('Tamesi.count') do
      post tamesis_url, params: { tamesi: { address: @tamesi.address, category_id: @tamesi.category_id, name: @tamesi.name } }
    end

    assert_redirected_to tamesi_url(Tamesi.last)
  end

  test "should show tamesi" do
    get tamesi_url(@tamesi)
    assert_response :success
  end

  test "should get edit" do
    get edit_tamesi_url(@tamesi)
    assert_response :success
  end

  test "should update tamesi" do
    patch tamesi_url(@tamesi), params: { tamesi: { address: @tamesi.address, category_id: @tamesi.category_id, name: @tamesi.name } }
    assert_redirected_to tamesi_url(@tamesi)
  end

  test "should destroy tamesi" do
    assert_difference('Tamesi.count', -1) do
      delete tamesi_url(@tamesi)
    end

    assert_redirected_to tamesis_url
  end
end
