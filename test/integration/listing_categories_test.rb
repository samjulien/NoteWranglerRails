require 'test_helper'

class ListingCategoriesTest < ActionDispatch::IntegrationTest
  setup do
    @category_one = Category.create!(name: 'Testing')
    @category_two = Category.create!(name: 'API')
  end

  test 'list all categories' do
    get '/api/categories'

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type

    categories = json(response.body)[:categories]
    assert_equal Category.count, categories.size
  end

  test 'list one category' do
    get "/api/categories/#{@category_two.id}"

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type
    
    category = json(response.body)[:category]
    assert_equal 'API', category[:name]
  end
end
