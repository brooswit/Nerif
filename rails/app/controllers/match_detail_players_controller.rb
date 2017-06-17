class MatchDetailPlayersController < ApplicationController
  before_action :set_match_detail_player, only: [:show, :edit, :update, :destroy]

  # GET /match_detail_players
  # GET /match_detail_players.json
  def index
    @match_detail_players = MatchDetailPlayer.all
  end

  # GET /match_detail_players/1
  # GET /match_detail_players/1.json
  def show
  end

  # GET /match_detail_players/new
  def new
    @match_detail_player = MatchDetailPlayer.new
  end

  # GET /match_detail_players/1/edit
  def edit
  end

  # POST /match_detail_players
  # POST /match_detail_players.json
  def create
    @match_detail_player = MatchDetailPlayer.new(match_detail_player_params)

    respond_to do |format|
      if @match_detail_player.save
        format.html { redirect_to @match_detail_player, notice: 'Match detail player was successfully created.' }
        format.json { render :show, status: :created, location: @match_detail_player }
      else
        format.html { render :new }
        format.json { render json: @match_detail_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_detail_players/1
  # PATCH/PUT /match_detail_players/1.json
  def update
    respond_to do |format|
      if @match_detail_player.update(match_detail_player_params)
        format.html { redirect_to @match_detail_player, notice: 'Match detail player was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_detail_player }
      else
        format.html { render :edit }
        format.json { render json: @match_detail_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_detail_players/1
  # DELETE /match_detail_players/1.json
  def destroy
    @match_detail_player.destroy
    respond_to do |format|
      format.html { redirect_to match_detail_players_url, notice: 'Match detail player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_detail_player
      @match_detail_player = MatchDetailPlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_detail_player_params
      params.fetch(:match_detail_player, {})
    end
end
