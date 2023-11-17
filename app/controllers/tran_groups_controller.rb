class TranGroupsController < ApplicationController
  before_action :set_tran_group, only: %i[ show edit update destroy ]

  # GET /tran_groups or /tran_groups.json
  def index
    @tran_groups = TranGroup.all
  end

  # GET /tran_groups/1 or /tran_groups/1.json
  def show
  end

  # GET /tran_groups/new
  def new
    @tran_group = TranGroup.new
  end

  # GET /tran_groups/1/edit
  def edit
  end

  # POST /tran_groups or /tran_groups.json
  def create
    @tran_group = TranGroup.new(tran_group_params)

    respond_to do |format|
      if @tran_group.save
        format.html { redirect_to tran_group_url(@tran_group), notice: "Tran group was successfully created." }
        format.json { render :show, status: :created, location: @tran_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tran_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tran_groups/1 or /tran_groups/1.json
  def update
    respond_to do |format|
      if @tran_group.update(tran_group_params)
        format.html { redirect_to tran_group_url(@tran_group), notice: "Tran group was successfully updated." }
        format.json { render :show, status: :ok, location: @tran_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tran_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tran_groups/1 or /tran_groups/1.json
  def destroy
    @tran_group.destroy!

    respond_to do |format|
      format.html { redirect_to tran_groups_url, notice: "Tran group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tran_group
      @tran_group = TranGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tran_group_params
      params.require(:tran_group).permit(:name, :icon, :user_id)
    end
end
