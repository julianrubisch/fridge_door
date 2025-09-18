class ArtworksController < ApplicationController
  before_action :set_artwork, only: %i[ show edit update destroy ]

  # GET /artworks
  def index
    @artworks = Artwork.all

    render Views::Artworks::Index.new(@artworks)
  end

  # GET /artworks/1
  def show
    render Views::Artworks::Show.new(@artwork)
  end

  # GET /artworks/new
  def new
    @artwork = Artwork.new

    render Views::Artworks::New.new(@artwork)
  end

  # GET /artworks/1/edit
  def edit
    render Views::Artworks::Edit.new(@artwork)
  end

  # POST /artworks
  def create
    @artwork = Artwork.new(artwork_params)

    if @artwork.save
      redirect_to @artwork, notice: "Artwork was successfully created."
    else
      render Views::Artworks::New.new(@artwork), status: :unprocessable_entity
    end
  end

  # PATCH/PUT /artworks/1
  def update
    if @artwork.update(artwork_params)
      redirect_to @artwork, notice: "Artwork was successfully updated.", status: :see_other
    else
      render Views::Artworks::Edit.new(@artwork), status: :unprocessable_entity
    end
  end

  # DELETE /artworks/1
  def destroy
    @artwork.destroy!
    redirect_to artworks_path, notice: "Artwork was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork
      @artwork = Artwork.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def artwork_params
      params.expect(artwork: [ :artist_id, :title, :description, :created_on, :image ])
    end
end
