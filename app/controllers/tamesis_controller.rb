class TamesisController < ApplicationController
  before_action :set_tamesi, only: %i[ show edit update destroy ]

  # GET /tamesis or /tamesis.json
  def index
    @tamesis = Tamesi.all
  end

  # GET /tamesis/1 or /tamesis/1.json
  def show
  end

  # GET /tamesis/new
  def new
    @tamesi = Tamesi.new
  end

  # GET /tamesis/1/edit
  def edit
  end

  # POST /tamesis or /tamesis.json
  def create
    @tamesi = Tamesi.new(tamesi_params)

    respond_to do |format|
      if @tamesi.save
        format.html { redirect_to @tamesi, notice: "Tamesi was successfully created." }
        format.json { render :show, status: :created, location: @tamesi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tamesi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tamesis/1 or /tamesis/1.json
  def update
    respond_to do |format|
      if @tamesi.update(tamesi_params)
        format.html { redirect_to @tamesi, notice: "Tamesi was successfully updated." }
        format.json { render :show, status: :ok, location: @tamesi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tamesi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tamesis/1 or /tamesis/1.json
  def destroy
    @tamesi.destroy
    respond_to do |format|
      format.html { redirect_to tamesis_url, notice: "Tamesi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tamesi
      @tamesi = Tamesi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tamesi_params
      params.require(:tamesi).permit(:category_id, :name, :address)
    end
end
