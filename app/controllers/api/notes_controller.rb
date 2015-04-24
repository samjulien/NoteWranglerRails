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
  end
end