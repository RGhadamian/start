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

  def edit
    #@provider = Provider.find(params[:id])
    #@provider = Provider.find(params[:provider_id])
    review = Review.find params[:id]
    @provider_id = review.provider_id
    @provider = Provider.find(@provider_id)
  end

  def update
    review = Review.find params[:id]
    provider_id = review.provider_id
    review.timely = params[:timely] if params[:timely]
    review.safe = params[:safe] if params[:safe]
    review.clear_communication = params[:clear_communication] if params[:clear_communication]
    review.value = params[:value] if params[:value]
    review.recommend = params[:recommend] if params[:recommend]
    review.save


    redirect_to show_provider_path(provider_id)
  end

end
