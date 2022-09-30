class CreativeWorksController < ApplicationController
  before_action :set_creative_work, only: %i[ show edit update destroy ]

  # GET /creative_works or /creative_works.json
  def index
    @creative_works = CreativeWork.all
  end

  # GET /creative_works/1 or /creative_works/1.json
  def show
  end

  # GET /creative_works/new
  def new
    @creative_work = CreativeWork.new
  end

  # GET /creative_works/1/edit
  def edit
  end

  # POST /creative_works or /creative_works.json
  def create
    @creative_work = CreativeWork.new(creative_work_params)

    respond_to do |format|
      if @creative_work.save
        format.html { redirect_to creative_work_url(@creative_work), notice: "Creative work was successfully created." }
        format.json { render :show, status: :created, location: @creative_work }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @creative_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creative_works/1 or /creative_works/1.json
  def update
    respond_to do |format|
      if @creative_work.update(creative_work_params)
        format.html { redirect_to creative_work_url(@creative_work), notice: "Creative work was successfully updated." }
        format.json { render :show, status: :ok, location: @creative_work }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @creative_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creative_works/1 or /creative_works/1.json
  def destroy
    @creative_work.destroy

    respond_to do |format|
      format.html { redirect_to creative_works_url, notice: "Creative work was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creative_work
      @creative_work = CreativeWork.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def creative_work_params
      params.require(:creative_work).permit(:name, :description, :price, :artist_id)
    end
end
