class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :update, :edit]

  def index
    @artist = Artist.all
  end

  def new
  end

  def create
  end

  def show
  
  end

  def edit
  end

  def update
  end

  private

    def set_artist
      @artist = Artist.find_by(id: params[:id]) 
    end

    def tag_params
      params.permit(:name, :description)
    end
end
