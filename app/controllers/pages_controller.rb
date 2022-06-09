class PagesController < ApplicationController
  def home
    
    @service_providers = ServiceProvider.search(params[:search])

    @municipalities = Municipality.search(params[:search])
  end

  def about
  end
end
