class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy, :follow]

  # GET /artists
  # GET /artists.json
  def index
    @artists = Artist.all.order('id ASC')
  end

  # GET /artists/1
  # GET /artists/1.json
  def show

  end

  # When bring button is clicked
  def bring
      if user_signed_in?
          redirect_to new_bid_path
          return
      else
          redirect_to sign_in_path
          return
      end
  end

  # When follow button is clicked
  def follow
      if user_signed_in?
          @followers = @artist.users.where(id: current_user.id)
          if @followers.count > 0
                @artist.followers -= 1
                @artist.users.destroy(current_user)
                @artist.save
          else
              @artist.users << current_user
              @artist.followers += 1
              @artist.save
          end
      else
          redirect_to sign_in_path
          return
      end
      redirect_to artists_path #:anchor => "artist-#{@artist.id}"
      return
  end

  # GET /artists/new
  def new
    @artist = Artist.new
  end

  # GET /artists/1/edit
  def edit
  end

  # POST /artists
  # POST /artists.json
  def create
    @artist = Artist.new(artist_params)

    respond_to do |format|
      if @artist.save
        format.html { redirect_to @artist, notice: 'Artist was successfully created.' }
        format.json { render :show, status: :created, location: @artist }
      else
        format.html { render :new }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artists/1
  # PATCH/PUT /artists/1.json
  def update
    respond_to do |format|
      if @artist.update(artist_params)
        format.html { redirect_to @artist, notice: 'Artist was successfully updated.' }
        format.json { render :show, status: :ok, location: @artist }
      else
        format.html { render :edit }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artists/1
  # DELETE /artists/1.json
  def destroy
    @artist.destroy
    respond_to do |format|
      format.html { redirect_to artists_url, notice: 'Artist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_params
      params.require(:artist).permit(:name, :description, :followers, :country_of_origin, :tier_1, :tier_2, :tier_3)
    end
end
