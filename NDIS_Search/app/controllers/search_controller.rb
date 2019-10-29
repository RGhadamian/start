class SearchController < ApplicationController
  #before_action :authorize

  def new
    @services_all = Service.all
  end

  def create
    @@service = params[:service]
    @@postcode = params[:postcode_suburb]
    redirect_to show_result_path
  end

  def result
    @service_result = @@service
    @postcode_result = @@postcode
    services_all = Service.find(@@service)
    providers_all = services_all.providers.all
    @providers_all = providers_all.select{|provider| provider[:postcode] == @@postcode}
  end

  def show
    @provider = Provider.find(params[:id])
  end

  def index
    @title = "Provider List"
    @provider_all = Provider.all
  end

end


