require 'test_helper'

class ListingNotesTest < ActionDispatch::IntegrationTest
  setup do
    Note.destroy_all
    @jeff = User.create!(name: 'Jeff Smith')
  	@note_one = @jeff.notes.create!(title: 'Hello world', content: 'Test')
  	@note_two = @jeff.notes.create!(title: 'Hello world again', 
      content: 'More tests.')
  end

  test 'list all notes' do
  	get '/api/notes'

  	assert_equal 200, response.status
  	assert_equal Mime::JSON, response.content_type

  	notes = json(response.body)[:notes]
  	assert_equal @jeff.notes.count, notes.size

    note = Note.find(notes.first[:id])
    assert_equal @jeff.id, note.user_id
  end

  test 'list one note' do
    get "/api/notes/#{@note_two.id}"

    assert_equal 200, response.status
    assert_equal Mime::JSON, response.content_type

    note = json(response.body)[:note]
    assert_equal 'Hello world again', note[:title]
  end
end