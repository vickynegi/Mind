class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :update, :edit, :save_photo, :save_paintings]

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
    country = ISO3166::Country[params["artist"]["country"]]
    params["artist"]["country"] = country.translations[I18n.locale.to_s] || country.name
    @artist.update(params["artist"].permit!)
    render :show
  end

  def save_photo
    @artist.update(params["artist"].permit!)
    redirect_to :action => "show"
  end

  def save_paintings
    @artist.images=(params["artist"].permit!)
    redirect_to :action => "show"
  end

  private

    def set_artist
      @artist = Artist.find_by(id: params[:id]) 
    end

    def artist_params
      params.permit(:name, :description, :phone, :city, :country, :username, :email, :encrypted_password, :photo, images: [])
    end
end
