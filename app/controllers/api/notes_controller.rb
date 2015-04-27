module Api
  class NotesController < ApplicationController
    
    def index
      notes = Note.all
      render json: notes, status: 200
    end

    def show
      note = Note.find(params[:id])
      render json: note, status: 200
    end

    def create
      note = Note.new(note_params)
      if note.save
        render json: note, status: 200
      else
        render json: note.errors, status: 422
      end
    end

    def destroy
      note = Note.find(params[:id])
      note.destroy!
      render nothing: true, status: 204
    end

    def update
      note = Note.find(book_params[:id])
      note.update(book_params)
      render json: note, status: 200, location: [:api, note]
    end

    private

    def note_params
      params.require(:note).permit(:title, :description, :link, :icon, :content)
    end
  end
end