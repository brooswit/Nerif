class MatchDetailsController < ApplicationController
  before_action :set_match_detail, only: [:show, :edit, :update, :destroy]

  # GET /match_details
  # GET /match_details.json
  def index
    @match_details = MatchDetail.all
  end

  # GET /match_details/1
  # GET /match_details/1.json
  def show
  end

  # GET /match_details/new
  def new
    @match_detail = MatchDetail.new
  end

  # GET /match_details/1/edit
  def edit
  end

  # POST /match_details
  # POST /match_details.json
  def create
    @match_detail = MatchDetail.new(match_detail_params)

    respond_to do |format|
      if @match_detail.save
        format.html { redirect_to @match_detail, notice: 'Match detail was successfully created.' }
        format.json { render :show, status: :created, location: @match_detail }
      else
        format.html { render :new }
        format.json { render json: @match_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_details/1
  # PATCH/PUT /match_details/1.json
  def update
    respond_to do |format|
      if @match_detail.update(match_detail_params)
        format.html { redirect_to @match_detail, notice: 'Match detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_detail }
      else
        format.html { render :edit }
        format.json { render json: @match_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_details/1
  # DELETE /match_details/1.json
  def destroy
    @match_detail.destroy
    respond_to do |format|
      format.html { redirect_to match_details_url, notice: 'Match detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_detail
      @match_detail = MatchDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_detail_params
      params.fetch(:match_detail, {})
    end
end
