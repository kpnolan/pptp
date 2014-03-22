class PrecinctsController < ApplicationController
  before_action :set_precinct, only: [:show, :edit, :update, :destroy]

  # GET /precincts
  # GET /precincts.json
  def index
    @precincts = Precinct.all
  end

  # GET /precincts/1
  # GET /precincts/1.json
  def show
  end

  # GET /precincts/new
  def new
    @precinct = Precinct.new
  end

  # GET /precincts/1/edit
  def edit
  end

  # POST /precincts
  # POST /precincts.json
  def create
    @precinct = Precinct.new(precinct_params)

    respond_to do |format|
      if @precinct.save
        format.html { redirect_to @precinct, notice: 'Precinct was successfully created.' }
        format.json { render action: 'show', status: :created, location: @precinct }
      else
        format.html { render action: 'new' }
        format.json { render json: @precinct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /precincts/1
  # PATCH/PUT /precincts/1.json
  def update
    respond_to do |format|
      if @precinct.update(precinct_params)
        format.html { redirect_to @precinct, notice: 'Precinct was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @precinct }
      else
        format.html { render action: 'edit' }
        format.json { render json: @precinct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /precincts/1
  # DELETE /precincts/1.json
  def destroy
    @precinct.destroy
    respond_to do |format|
      format.html { redirect_to precincts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_precinct
      @precinct = Precinct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def precinct_params
      params.require(:precinct).permit(:name)
    end
end
