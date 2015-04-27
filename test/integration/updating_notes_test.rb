require 'test_helper'

class UpdatingNotesTest < ActionDispatch::IntegrationTest
  setup do
    @note = Note.create!(title: 'Hello world', 
      description: 'A test note',
      link: 'http://www.helloworld.com',
      content: 'Good morning!')
  end

  test 'updating a note' do
    put "/api/notes/#{@note.id}", note: { title: 'Test' }
    assert_equal 200, response.status
    note = json(response.body)[:note]
    assert_equal api_note_url(note[:id]), response.location
  end
end
