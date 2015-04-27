require 'test_helper'

class ListNotesTest < ActionDispatch::IntegrationTest
  setup do
  	Note.create!(title: 'Hello world')
  	Note.create!(title: 'Hello world again')
  end

  test 'list all notes' do
  	get '/api/notes'

  	assert_equal 200, response.status
  	assert_equal Mime::JSON, response.content_type

  	notes = json(response.body)[:notes]
  	# assert_equal Note.count, notes.size
  	# note = Note.find(notes.first[:id])
  	# assert_equal 'Hello world', note.title
  end
end