class UserLikesController < ApplicationController
  def create
    @job_offer = JobOffer.find(params[:job_offer_id])
    @user_like = UserLike.new(job_offer: @job_offer)
    @user_like.user = current_user

    if params[:dislike]
      @user_like.status = false
    else
      @user_like.status = true
    end

    if @user_like.save
      if @user_like.status = true && JobLike.find_by(user: current_user, job_offer: @job_offer, status: true)
        match = Match.create(user: current_user, job_offer: @job_offer)
        redirect_to match_path(match)
      else
        redirect_to job_offers_path
      end
    else
      redirect_to job_offers_path
    end
  end


end
