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
        render json: note, status: 201, location: [:api, note]
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
      note = Note.find(params[:id])
      if note.update!(note_params)
        render json: note, status: 200, location: [:api, note]
      else
        render json: note.errors, status: 422
      end
    end

    private

    def note_params
      params.require(:note).permit(:title, 
        :description, :link, :icon, :content, :user_id, :category_id)
    end
  end
end