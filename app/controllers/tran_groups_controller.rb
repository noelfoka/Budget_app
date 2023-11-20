class TranGroupsController < ApplicationController
  before_action :authenticate_user!

  # GET /tran_groups or /tran_groups.json
  def index
    @tran_groups = TranGroup.where(user_id: current_user.id) || []
  end

  # GET /tran_groups/new
  def new
    @tran_group = TranGroup.new
  end

  # POST /tran_groups or /tran_groups.json
  def create
    @tran_group = TranGroup.new(tran_group_params)
    @tran_group.user = current_user

    respond_to do |format|
      if @tran_group.save
        format.html { redirect_to tran_groups_path(@tran_group), notice: 'Tran group was successfully created.' }
        format.json { render :show, status: :created, location: @tran_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tran_group.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def tran_group_params
    params.require(:tran_group).permit(:user_id, :name, :icon, :amount)
  end
end
