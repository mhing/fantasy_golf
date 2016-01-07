class GolfersController < ApplicationController
  before_action :set_golfer, only: [:show, :edit, :update, :destroy]

  # GET /golfers
  # GET /golfers.json
  def index
    @golfers = Golfer.all
  end

  # GET /golfers/1
  # GET /golfers/1.json
  def show
  end

  # GET /golfers/new
  def new
    @golfer = Golfer.new
  end

  # GET /golfers/1/edit
  def edit
  end

  # POST /golfers
  # POST /golfers.json
  def create
    @golfer = Golfer.new(golfer_params)

    respond_to do |format|
      if @golfer.save
        format.html { redirect_to @golfer, notice: 'Golfer was successfully created.' }
        format.json { render :show, status: :created, location: @golfer }
      else
        format.html { render :new }
        format.json { render json: @golfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /golfers/1
  # PATCH/PUT /golfers/1.json
  def update
    respond_to do |format|
      if @golfer.update(golfer_params)
        format.html { redirect_to @golfer, notice: 'Golfer was successfully updated.' }
        format.json { render :show, status: :ok, location: @golfer }
      else
        format.html { render :edit }
        format.json { render json: @golfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /golfers/1
  # DELETE /golfers/1.json
  def destroy
    @golfer.destroy
    respond_to do |format|
      format.html { redirect_to golfers_url, notice: 'Golfer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_golfer
      @golfer = Golfer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def golfer_params
      params.require(:golfer).permit(:first_name, :last_name)
    end
end
