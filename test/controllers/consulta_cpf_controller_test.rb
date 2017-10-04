require 'test_helper'

class ConsultaCpfControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get consulta_cpf_index_url
    assert_response :success
  end

end
