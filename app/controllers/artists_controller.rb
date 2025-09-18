class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[ show edit update destroy ]

  # GET /artists
  def index
    @artists = Artist.all

    render Views::Artists::Index.new(@artists)
  end

  # GET /artists/1
  def show
    render Views::Artists::Show.new(@artist)
  end

  # GET /artists/new
  def new
    @artist = Artist.new

    render Views::Artists::New.new(@artist)
  end

  # GET /artists/1/edit
  def edit
    render Views::Artists::Edit.new(@artist)
  end

  # POST /artists
  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to @artist, notice: "Artist was successfully created."
    else
      render Views::Artists::New.new(@artist), status: :unprocessable_entity
    end
  end

  # PATCH/PUT /artists/1
  def update
    if @artist.update(artist_params)
      redirect_to @artist, notice: "Artist was successfully updated.", status: :see_other
    else
      render Views::Artists::Edit.new(@artist), status: :unprocessable_entity
    end
  end

  # DELETE /artists/1
  def destroy
    @artist.destroy!
    redirect_to artists_path, notice: "Artist was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def artist_params
      params.expect(artist: [ :first_name, :last_name, :date_of_birth, :notes, :avatar ])
    end
end
