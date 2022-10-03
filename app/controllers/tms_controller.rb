class TmsController < ApplicationController
  before_action :set_tm, only: %i[ show edit update destroy ]

  # GET /tms or /tms.json
  def index
    @tms = Tm.all
  end

  # GET /tms/1 or /tms/1.json
  def show
  end

  # GET /tms/new
  def new
    @tm = Tm.new
  end

  # GET /tms/1/edit
  def edit
  end

  # POST /tms or /tms.json
  def create
    @tm = Tm.new(tm_params)

    respond_to do |format|
      if @tm.save
        format.html { redirect_to tm_url(@tm), notice: "Tm was successfully created." }
        format.json { render :show, status: :created, location: @tm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tms/1 or /tms/1.json
  def update
    respond_to do |format|
      if @tm.update(tm_params)
        format.html { redirect_to tm_url(@tm), notice: "Tm was successfully updated." }
        format.json { render :show, status: :ok, location: @tm }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tms/1 or /tms/1.json
  def destroy
    @tm.destroy

    respond_to do |format|
      format.html { redirect_to tms_url, notice: "Tm was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tm
      @tm = Tm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tm_params
      params.require(:tm).permit(:first_name, :last_name, :email, :course)
    end
end
