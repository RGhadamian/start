class SearchController < ApplicationController
  #before_action :authorize

  def new
  end

  def result
  end

  def show
=begin
    @provider = Provider.find(params[:name])
=end
  end

  def index
    @title = "Provider List"
    @provider_all = Provider.all
  end

end


