require "test_helper"

class Api::RidersControllerTest < ActionDispatch::IntegrationTest
  riders_url = "/api/riders"

  test "get riders index" do
    file = fixture_file_upload(Rails.root.join("/files", "female-57.jpg"), "image/jpg")
    rider = riders(:one)
    rider.picture.attach(io: File.open(file), filename: "female-57.jpg", content_type: "image/jpg")

    get riders_url

    response = json_response[0]
    # puts response

    assert_equal "John", response["first_name"]
    assert_equal "MyString", response["last_name"]
    assert_equal 1.5, response["lat"]
    assert_equal 1.5, response["lng"]
    assert_equal "MyText", response["quote"]
    assert_equal "MyString", response["state"]
    assert_equal "MyString", response["city"]
    assert_equal "John", response["first_name"]
    assert rider.picture.attached?
  end
end

#
def json_response
  ActiveSupport::JSON.decode @response.body
end
