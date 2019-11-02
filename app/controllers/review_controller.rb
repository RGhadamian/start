class ReviewController < ApplicationController
  def new
    @provider = Provider.find(params[:id])
  end

  def create
    r1 = Review.new
    r1.timely = params[:timely]
    r1.safe = params[:safe]
    r1.clear_communication = params[:clear_communication]
    r1.value = params[:value]
    r1.recommend = params[:recommend]
    r1.provider = Provider.find(params[:provider_id])
    r1.save
    redirect_to home_path
  end

  def delete
    @kitten = Kitten.find params[:id]
    @kitten.destroy
    @kitten.foods.destroy_all
    redirect_to home_path
  end

end
