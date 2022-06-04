class ServiceProvidersController < ApplicationController
  before_action :set_service_provider, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :set_organization
  before_action :set_municipality


  # GET /service_providers or /service_providers.json
  def index
    @service_providers = ServiceProvider.all
  end

  # GET /service_providers/1 or /service_providers/1.json
  def show
  end

  # GET /service_providers/new
  def new
    @service_provider = ServiceProvider.new
  end

  # GET /service_providers/1/edit
  def edit
  end

  # POST /service_providers or /service_providers.json
  def create
    @service_provider = ServiceProvider.new(service_provider_params)
    @service_provider.municipality = @municipality

    respond_to do |format|
      if @service_provider.save
        format.html { redirect_to organization_municipality_service_provider_url(@organization, @municipality, @service_provider), notice: "Service provider was successfully created." }
        format.json { render :show, status: :created, location: @service_provider }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_providers/1 or /service_providers/1.json
  def update
    respond_to do |format|
      if @service_provider.update(service_provider_params)
        format.html { redirect_to organization_municipality_service_provider_url(@organization, @municipality, @service_provider), notice: "Service provider was successfully updated." }
        format.json { render :show, status: :ok, location: @service_provider }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_providers/1 or /service_providers/1.json
  def destroy
    @service_provider.destroy

    respond_to do |format|
      format.html { redirect_to organization_municipality_service_providers_url(@organization, @municipality), notice: "Service provider was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_provider
      @service_provider = ServiceProvider.find(params[:id])
    end

    def set_organization
      @organization = Organization.find(params[:organization_id])
    end

    def set_municipality
      @municipality = Municipality.find(params[:municipality_id])
    end

    # Only allow a list of trusted parameters through.
    def service_provider_params
      params.require(:service_provider).permit(:name, :about, :street, :city, :state, :zip, :contact_person, :phone, :email, :url,
                                               organizations_attributes: [:id, :name, :_destroy],
                                               municipalities_attributes: [:id, :name, :_destroy], services: [], search: [])
    end
end
