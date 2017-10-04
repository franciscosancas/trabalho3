require 'test_helper'

class ResultadoconsultaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resultadoconsultum = resultadoconsulta(:one)
  end

  test "should get index" do
    get resultadoconsulta_url
    assert_response :success
  end

  test "should get new" do
    get new_resultadoconsultum_url
    assert_response :success
  end

  test "should create resultadoconsultum" do
    assert_difference('Resultadoconsultum.count') do
      post resultadoconsulta_url, params: { resultadoconsultum: { resultado: @resultadoconsultum.resultado } }
    end

    assert_redirected_to resultadoconsultum_url(Resultadoconsultum.last)
  end

  test "should show resultadoconsultum" do
    get resultadoconsultum_url(@resultadoconsultum)
    assert_response :success
  end

  test "should get edit" do
    get edit_resultadoconsultum_url(@resultadoconsultum)
    assert_response :success
  end

  test "should update resultadoconsultum" do
    patch resultadoconsultum_url(@resultadoconsultum), params: { resultadoconsultum: { resultado: @resultadoconsultum.resultado } }
    assert_redirected_to resultadoconsultum_url(@resultadoconsultum)
  end

  test "should destroy resultadoconsultum" do
    assert_difference('Resultadoconsultum.count', -1) do
      delete resultadoconsultum_url(@resultadoconsultum)
    end

    assert_redirected_to resultadoconsulta_url
  end
end
