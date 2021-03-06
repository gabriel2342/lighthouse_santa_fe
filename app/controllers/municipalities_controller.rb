class MunicipalitiesController < ApplicationController
  before_action :set_municipality, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :set_organization

  # GET /municipalities or /municipalities.json
  def index
    @municipalities = Municipality.order(:name)
  end

  # GET /municipalities/1 or /municipalities/1.json
  def show
  end

  # GET /municipalities/new
  def new
    @municipality = Municipality.new
    @municipality.service_providers.build

  end

  # GET /municipalities/1/edit
  def edit
  end

  # POST /municipalities or /municipalities.json
  def create

    @municipality = Municipality.new(municipality_params)
    @municipality.organization = @organization


    respond_to do |format|
      if @municipality.save
        format.html { redirect_to organization_municipality_url(@organization, @municipality), notice: "Municipality was successfully created." }
        format.json { render :show, status: :created, location: @municipality }
        format.turbo_stream
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @municipality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /municipalities/1 or /municipalities/1.json
  def update
    respond_to do |format|
      if @municipality.update(municipality_params)
        format.html { redirect_to organization_municipality_url(@organization, @municipality), notice: "Municipality was successfully updated." }
        format.json { render :show, status: :ok, location: @municipality }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @municipality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /municipalities/1 or /municipalities/1.json
  def destroy
    @municipality.destroy

    respond_to do |format|
      format.html { redirect_to organization_municipalities_url(@organization), notice: "Municipality was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_municipality
      @municipality = Municipality.find(params[:id])
    end

    def set_organization
      @organization = Organization.find(params[:organization_id])
    end

    def set_service_providers
      @service_providers = ServiceProvider.all
    end

    # Only allow a list of trusted parameters through.
    def municipality_params
      params.require(:municipality).permit(:name, organizations_attributes: [:id, :name, :_destroy], service_providers_attributes: [:id, :name, :about, :street, :city, :state, :zip, :contact_person, :phone, :email, :url, :services])
    end
end
