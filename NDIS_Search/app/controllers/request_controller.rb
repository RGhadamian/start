class RequestController < ApplicationController
  def new
    @provider = Provider.find(params[:id])
  end
end
