require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  setup do
    @registration_user = {
      id: '6',
      first_name: 'Karen',
      last_name: 'Peterson',
      email: 'karenp@sfu.ca',
      birth_date: 24.years.ago.to_s(:db),
      gender: 'female',
      lat: 120,
      lng: -120,
      password: 'password!',
      password_confirmation: 'password!'
    }
  end
  test "should not register invalid user" do
    https!
    get "/users/sign_up"
    assert_response :success
    usr = @registration_user.clone
    usr[:password_confirmation] = ''
    post_via_redirect "/users", user: usr
    assert_equal '/users', path
    https!(false)
  end
  test "should register" do
    https!
    get "/users/sign_up"
    assert_response :success
    usr = @registration_user.clone
    post_via_redirect "/users", user: usr
    assert_equal '/', path
    https!(false)
  end
end
