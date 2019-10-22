class SearchController < ApplicationController
  #before_action :authorize

  def new
  end

  def result
  end

  def show
    @provider = Provider.find(params[:name])
  end
end
