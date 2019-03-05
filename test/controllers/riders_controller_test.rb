require "test_helper"

class RidersControllerTest < ActionDispatch::IntegrationTest
  # riders_url = "/riders"

  # setup do
  #   @rider = riders(:one)
  # end

  # test "should get index" do
  #   get riders_url
  #   assert_response :success
  # end

  # test "should get new" do
  #   get new_rider_url
  #   assert_response :success
  # end

  # test "should create rider" do
  #   assert_difference("Rider.count") do
  #     post riders_url, params: {rider: {city: @rider.city, first_name: @rider.first_name, last_name: @rider.last_name, lat: @rider.lat, lng: @rider.lng, quote: @rider.quote, state: @rider.state}}
  #   end

  #   assert_redirected_to rider_url(Rider.last)
  # end

  # test "should show rider" do
  #   rider = riders(:one)

  #   # file = fixture_file_upload(Rails.root.join("/files", "female-57.jpg"), "image/jpg")
  #   file = Rails.root.join("test/fixtures/files", "female-57.jpg")

  #   puts file

  #   rider.image.attach(io: File.open(file), filename: "female-57.jpg", content_type: "image/jpg")

  #   # puts rider.id, rider.picture.attached?

  #   # rider.as_json.merge({image: url_for(rider.picture)})

  #   # rider.image.attach(io: File.open("/path/to/file"), filename: "file.pdf")
  #   get rider_url(rider)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_rider_url(@rider)
  #   assert_response :success
  # end

  # test "should update rider" do
  #   patch rider_url(@rider), params: {rider: {city: @rider.city, first_name: @rider.first_name, last_name: @rider.last_name, lat: @rider.lat, lng: @rider.lng, quote: @rider.quote, state: @rider.state}}
  #   assert_redirected_to rider_url(@rider)
  # end

  # test "should destroy rider" do
  #   assert_difference("Rider.count", -1) do
  #     delete rider_url(@rider)
  #   end

  #   assert_redirected_to riders_url
  # end
end
