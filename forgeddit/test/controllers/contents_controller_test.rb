require 'test_helper'

class ContentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contents_path
    assert_response :success
  end

  test "should get new content" do
    User.create(email: "amax3002@gmail.com", password: "password")
    post session_path, params: {email: "amax3002@gmail.com", password: "password"}
    get new_content_path()
    assert_response :success
    assert_select "h1", "New Content Input"
  end

  test "should get create content" do
    User.create(email: "amax3002@gmail.com", password: "password")
    post session_path, params: {email: "amax3002@gmail.com", password: "password"}
    post "/contents", params: {content: {name: "amax3002@gmail.com", type: "password", description: "lalala"}}
    assert_response :success
  end

end
