class ProdprovidersController < ApplicationController
  before_action :set_prodprovider, only: %i[ show edit update destroy ]

  # GET /prodproviders or /prodproviders.json
  def index
    @prodproviders = Prodprovider.all
  end

  # GET /prodproviders/1 or /prodproviders/1.json
  def show
  end

  # GET /prodproviders/new
  def new
    @prodprovider = Prodprovider.new
  end

  # GET /prodproviders/1/edit
  def edit
  end

  # POST /prodproviders or /prodproviders.json
  def create
    @prodprovider = Prodprovider.new(prodprovider_params)

    respond_to do |format|
      if @prodprovider.save
        format.html { redirect_to prodprovider_url(@prodprovider), notice: "Prodprovider was successfully created." }
        format.json { render :show, status: :created, location: @prodprovider }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prodprovider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodproviders/1 or /prodproviders/1.json
  def update
    respond_to do |format|
      if @prodprovider.update(prodprovider_params)
        format.html { redirect_to prodprovider_url(@prodprovider), notice: "Prodprovider was successfully updated." }
        format.json { render :show, status: :ok, location: @prodprovider }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prodprovider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodproviders/1 or /prodproviders/1.json
  def destroy
    @prodprovider.destroy

    respond_to do |format|
      format.html { redirect_to prodproviders_url, notice: "Prodprovider was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodprovider
      @prodprovider = Prodprovider.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prodprovider_params
      params.require(:prodprovider).permit(:name, :contactname, :isactive)
    end
end
