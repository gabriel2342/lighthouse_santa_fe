class PagesController < ApplicationController
  def home
    @service_providers = ServiceProvider.all
    @service_providers = ServiceProvider.search(params[:search])

    @municipalities = Municipality.all
    @municipalities = Municipality.search(params[:search])
  end

  def about
  end
end
