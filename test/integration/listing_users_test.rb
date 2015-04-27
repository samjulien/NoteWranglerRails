require 'test_helper'

class ListingUsersTest < ActionDispatch::IntegrationTest
  setup do
    @user_one = User.create!(name: 'John Smith')
    @user_two = User.create!(name: 'Jane Doe')
  end

  test 'list all users' do
    get '/api/users'

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type

    users = json(response.body)[:users]
    assert_equal User.count, users.size
  end

  test 'list one user' do
    get "/api/users/#{@user_two.id}"

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
    
    user = json(response.body)[:user]
    assert_equal 'Jane Doe', user[:name]
  end
end