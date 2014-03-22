class PoliceController < ApplicationController
  before_action :set_police, only: [:show, :edit, :update, :destroy]

  # GET /police
  # GET /police.json
  def index
    @police = Police.all
  end

  # GET /police/1
  # GET /police/1.json
  def show
  end

  # GET /police/new
  def new
    @police = Police.new
  end

  # GET /police/1/edit
  def edit
  end

  # POST /police
  # POST /police.json
  def create
    @police = Police.new(police_params)

    respond_to do |format|
      if @police.save
        format.html { redirect_to @police, notice: 'Police was successfully created.' }
        format.json { render action: 'show', status: :created, location: @police }
      else
        format.html { render action: 'new' }
        format.json { render json: @police.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /police/1
  # PATCH/PUT /police/1.json
  def update
    respond_to do |format|
      if @police.update(police_params)
        format.html { redirect_to @police, notice: 'Police was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: @police }
      else
        format.html { render action: 'edit' }
        format.json { render json: @police.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /police/1
  # DELETE /police/1.json
  def destroy
    @police.destroy
    respond_to do |format|
      format.html { redirect_to police_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_police
      @police = Police.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def police_params
      params.require(:police).permit(:first_name, :last_name, :svcid_badge, :year_verified, :title_id, :department_id, :precinct_id)
    end
end
