require 'test_helper'

class OtherControllerTest < ActionDispatch::IntegrationTest
  test "should get questions" do
    get other_questions_url
    assert_response :success
  end

  test "should get news" do
    get other_news_url
    assert_response :success
  end

  test "should get contact" do
    get other_contact_url
    assert_response :success
  end

end
