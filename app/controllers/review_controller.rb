class ReviewController < ApplicationController
  def new
    @provider = Provider.find(params[:id])
  end

  def create
    @provider = Provider.find(params[:provider_id])
    r1 = Review.new
    r1.timely = params[:timely]
    r1.safe = params[:safe]
    r1.clear_communication = params[:clear_communication]
    r1.value = params[:value]
    r1.recommend = params[:recommend]
    r1.provider = Provider.find(params[:provider_id])
    r1.save
    redirect_to show_provider_path(@provider)
  end

  def delete
    review = Review.find params[:id]
    provider_id = review.provider_id
    review.destroy
    redirect_to show_provider_path(provider_id)
  end

end
