class CompetencyRaitingsController < ApplicationController
  before_action :set_competency_raiting, only: [:show, :edit, :update, :destroy]

  # GET /competency_raitings
  # GET /competency_raitings.json
  def index
    @competency_raitings = CompetencyRaiting.all
  end

  # GET /competency_raitings/1
  # GET /competency_raitings/1.json
  def show
  end

  # GET /competency_raitings/new
  def new
    @competency_raiting = CompetencyRaiting.new
  end

  # GET /competency_raitings/1/edit
  def edit
  end

  # POST /competency_raitings
  # POST /competency_raitings.json
  def create
    @competency_raiting = CompetencyRaiting.new(competency_raiting_params)

    respond_to do |format|
      if @competency_raiting.save
        format.html { redirect_to @competency_raiting, notice: 'Competency raiting was successfully created.' }
        format.json { render :show, status: :created, location: @competency_raiting }
      else
        format.html { render :new }
        format.json { render json: @competency_raiting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competency_raitings/1
  # PATCH/PUT /competency_raitings/1.json
  def update
    respond_to do |format|
      if @competency_raiting.update(competency_raiting_params)
        format.html { redirect_to @competency_raiting, notice: 'Competency raiting was successfully updated.' }
        format.json { render :show, status: :ok, location: @competency_raiting }
      else
        format.html { render :edit }
        format.json { render json: @competency_raiting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competency_raitings/1
  # DELETE /competency_raitings/1.json
  def destroy
    @competency_raiting.destroy
    respond_to do |format|
      format.html { redirect_to competency_raitings_url, notice: 'Competency raiting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competency_raiting
      @competency_raiting = CompetencyRaiting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competency_raiting_params
      params.require(:competency_raiting).permit(:name, :rank, :description, :competency_id)
    end
end
