class ProductcatalogsController < ApplicationController
  before_action :set_productcatalog, only: %i[ show edit update destroy ]

  # GET /productcatalogs or /productcatalogs.json
  def index
    @productcatalogs = Productcatalog.all
  end

  # GET /productcatalogs/1 or /productcatalogs/1.json
  def show
  end

  # GET /productcatalogs/new
  def new
    @productcatalog = Productcatalog.new
  end

  # GET /productcatalogs/1/edit
  def edit
  end

  # POST /productcatalogs or /productcatalogs.json
  def create
    @productcatalog = Productcatalog.new(productcatalog_params)

    respond_to do |format|
      if @productcatalog.save
        format.html { redirect_to productcatalog_url(@productcatalog), notice: "Productcatalog was successfully created." }
        format.json { render :show, status: :created, location: @productcatalog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @productcatalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productcatalogs/1 or /productcatalogs/1.json
  def update
    respond_to do |format|
      if @productcatalog.update(productcatalog_params)
        format.html { redirect_to productcatalog_url(@productcatalog), notice: "Productcatalog was successfully updated." }
        format.json { render :show, status: :ok, location: @productcatalog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @productcatalog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productcatalogs/1 or /productcatalogs/1.json
  def destroy
    @productcatalog.destroy

    respond_to do |format|
      format.html { redirect_to productcatalogs_url, notice: "Productcatalog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productcatalog
      @productcatalog = Productcatalog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def productcatalog_params
      params.require(:productcatalog).permit(:name, :string, :description, :minquality, :maxquantity, :‘price, :‘price, :isavailable, :Prodprovider, :references, :Prodlines, :references)
    end
end
