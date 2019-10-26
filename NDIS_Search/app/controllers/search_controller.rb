class SearchController < ApplicationController
  #before_action :authorize

  def new
    @services_all = Service.all
  end

  def create
    @@service = params[:service]
    @@postcode = params[:postcode_suburb]
=begin
    @@result = Provider.find(@@postcode)
=end
    redirect_to show_result_path

  end

  def result
    @service_result = @@service
    @postcode_result = @@postcode
  end

  def show
  end

  def index
    @title = "Provider List"
    @provider_all = Provider.all
  end

end


