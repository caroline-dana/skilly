class UserLikesController < ApplicationController
  def create
    @user_like = UserLike.new(job_offer: JobOffer.find(params[:job_offer_id]))
    @user_like.user = current_user
    @user_like.status = 'pending'

    if @user_like.save
      redirect_to job_offers_path
    else
      redirect_to job_offers_path
    end
  end


end
