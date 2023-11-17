class ChangeColumnNamesController < ApplicationController
  before_action :set_change_column_name, only: %i[ show edit update destroy ]

  # GET /change_column_names or /change_column_names.json
  def index
    @change_column_names = ChangeColumnName.all
  end

  # GET /change_column_names/1 or /change_column_names/1.json
  def show
  end

  # GET /change_column_names/new
  def new
    @change_column_name = ChangeColumnName.new
  end

  # GET /change_column_names/1/edit
  def edit
  end

  # POST /change_column_names or /change_column_names.json
  def create
    @change_column_name = ChangeColumnName.new(change_column_name_params)

    respond_to do |format|
      if @change_column_name.save
        format.html { redirect_to change_column_name_url(@change_column_name), notice: "Change column name was successfully created." }
        format.json { render :show, status: :created, location: @change_column_name }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @change_column_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_column_names/1 or /change_column_names/1.json
  def update
    respond_to do |format|
      if @change_column_name.update(change_column_name_params)
        format.html { redirect_to change_column_name_url(@change_column_name), notice: "Change column name was successfully updated." }
        format.json { render :show, status: :ok, location: @change_column_name }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @change_column_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_column_names/1 or /change_column_names/1.json
  def destroy
    @change_column_name.destroy!

    respond_to do |format|
      format.html { redirect_to change_column_names_url, notice: "Change column name was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_column_name
      @change_column_name = ChangeColumnName.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def change_column_name_params
      params.fetch(:change_column_name, {})
    end
end
