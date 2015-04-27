require 'test_helper'

class CreatingNotesTest < ActionDispatch::IntegrationTest
  test 'creating a note' do
    post '/api/notes', {note: {
        title: 'Hello world',
        description: 'A note about hello.',
        content: 'Good morning!',
        link: 'http://www.hello.com'
      }
    }

    assert_equal 201, response.status
    assert_equal Mime::JSON, response.content_type

    note = json(response.body)[:note]
    assert_equal api_note_url(note[:id]), response.location
  end

  test 'missing fields on create should fail' do
    post '/api/notes', {note:{
        title: nil,
        description: 'Test',
        content: 'Test again',
        link: 'http://www.world.com'
      }
    }

    assert_equal 422, response.status
  end
end
