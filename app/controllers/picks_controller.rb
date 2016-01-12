class PicksController < ApplicationController
  before_action :set_pick, only: [:show, :edit, :update, :destroy]

  # GET /picks
  # GET /picks.json
  def index
    @picks = Pick.all
  end

  # GET /picks/1
  # GET /picks/1.json
  def show
  end

  # GET /picks/new
  def new
    @pick = Pick.new
    @tournaments = Tournament.all.ordered
  end

  # GET /picks/1/edit
  def edit
    #@pick = Pick.find(:id)
    #@tournaments = Tournament.all.order(:name)
  end

  # POST /picks
  # POST /picks.json
  def create
    golfer = Golfer.find_or_initialize_by(golfer_params)
    @pick = Pick.new(pick_params)
    # TODO allow you to create or select golfer from dropdown
    @pick.golfer = golfer

    respond_to do |format|
      if @pick.save
        format.html { redirect_to @pick, notice: 'Pick was successfully created.' }
        format.json { render :show, status: :created, location: @pick }
      else
        format.html { render :new }
        format.json { render json: @pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picks/1
  # PATCH/PUT /picks/1.json
  def update
    respond_to do |format|
      if @pick.update(pick_params)
        format.html { redirect_to @pick, notice: 'Pick was successfully updated.' }
        format.json { render :show, status: :ok, location: @pick }
      else
        format.html { render :edit }
        format.json { render json: @pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picks/1
  # DELETE /picks/1.json
  def destroy
    @pick.destroy
    respond_to do |format|
      format.html { redirect_to picks_url, notice: 'Pick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pick
    @pick = Pick.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def pick_params
    params.require(:pick).permit(:golfer_id, :tournament_id, :date, :backup)
  end

  def golfer_params
    params.require(:golfer).permit(:first_name, :last_name)
  end
end
