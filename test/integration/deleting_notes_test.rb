require 'test_helper'

class DeletingNotesTest < ActionDispatch::IntegrationTest
  setup do
    @note = Note.create!(title: 'Hello world', content: 'Delete me')
  end

  test 'delete a note' do
    delete "/api/notes/#{@note.id}"

    assert_equal 204, response.status
  end
end
