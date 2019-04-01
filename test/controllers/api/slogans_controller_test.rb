require "test_helper"

class Api::SlogansControllerTest < ActionDispatch::IntegrationTest
  slogans_url = "/api/slogans"

  test "get slogans index" do
    slogan = api_slogans(:one)

    get slogans_url

    response = json_response[0]
    # puts @response.body, @response.status
    assert_equal "John", response["first_name"]
    assert_equal "Doe", response["last_name"]
    assert_equal "john.doe@example.com", response["email"]
    assert_equal 200, @response.status
  end

  test "create slogan" do
    # slogan = api_slogans(:one)

    # puts params: slogan

    post slogans_url,
         params: {
           first_name: "jane",
           last_name: "Doe",
           email: "jane.doe@example.com",
           slogan: "some text here",
         }

    assert_equal 201, @response.status
  end

  test "check for duplicate email" do
    mock_slogan = {
      first_name: "John",
      last_name: "Doe",
      email: "john.doe@example.com",
      slogan: "some text here",
    }

    post slogans_url,
         params: mock_slogan
    assert_equal 200, @response.status
  end
end

#
def json_response
  ActiveSupport::JSON.decode @response.body
end
