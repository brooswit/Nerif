class MatchPlayersController < ApplicationController
  before_action :set_match_player, only: [:show, :edit, :update, :destroy]

  # GET /match_players
  # GET /match_players.json
  def index
    @match_players = MatchPlayer.all
  end

  # GET /match_players/1
  # GET /match_players/1.json
  def show
  end

  # GET /match_players/new
  def new
    @match_player = MatchPlayer.new
  end

  # GET /match_players/1/edit
  def edit
  end

  # POST /match_players
  # POST /match_players.json
  def create
    @match_player = MatchPlayer.new(match_player_params)

    respond_to do |format|
      if @match_player.save
        format.html { redirect_to @match_player, notice: 'Match player was successfully created.' }
        format.json { render :show, status: :created, location: @match_player }
      else
        format.html { render :new }
        format.json { render json: @match_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_players/1
  # PATCH/PUT /match_players/1.json
  def update
    respond_to do |format|
      if @match_player.update(match_player_params)
        format.html { redirect_to @match_player, notice: 'Match player was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_player }
      else
        format.html { render :edit }
        format.json { render json: @match_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_players/1
  # DELETE /match_players/1.json
  def destroy
    @match_player.destroy
    respond_to do |format|
      format.html { redirect_to match_players_url, notice: 'Match player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_player
      @match_player = MatchPlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_player_params
      params.fetch(:match_player, {})
    end
end
