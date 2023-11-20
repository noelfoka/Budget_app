class TranDetailsController < ApplicationController
  before_action :set_detail, only: %i[show edit update destroy]

  # GET /tran_details or /tran_details.json
  def index
    if params[:tran_group_id]
      filtered_details = Detail.where(author_id: current_user, tran_group_id: params[:tran_group_id])
      @total_value = Detail.where(author_id: current_user, tran_group_id: params[:tran_group_id]).sum(:amount)
      @details = filtered_details.to_a
    elsif params[:user_id]
      @user = User.find(params[:user_id])
      @details = @user.details
    end
  end

  # GET /tran_details/new
  def new
    @detail = Detail.new
    @available_groups = TranGroup.where(user_id: current_user, id: params[:tran_group_id])
    @tran_group = TranGroup.find(params[:tran_group_id]) # Load the parent TranGroup
    @detail = @tran_group.details.build
  end

  # POST /tran_details or /tran_details.json
  def create
    @detail = Detail.new(detail_params)
    @detail.author = current_user

    respond_to do |format|
      if @detail.save
        format.html do
          redirect_to tran_group_details_path(params[:tran_group_id]),
                      notice: 'Tran detail was successfully created.'
        end
        format.json { render :show, status: :created, location: @detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_detail
    @detail = Detail.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def detail_params
    params.require(:detail).permit(:itemDetails, :author_id, :amount, :tran_group_id)
  end
end
