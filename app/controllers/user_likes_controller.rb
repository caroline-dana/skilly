class UserLikesController < ApplicationController
  def create
    @user_like = UserLike.new(user_like_params)
    @job_offer = JobOffer.find(params[:job_offer_id])
    @user_like.job_offer = @job_offer

    if @user_like.status == true
      @user_like.save
      redirect_to job_offer_path
    else
      redirect_to job_offer_path
    end
  end

  private

  def user_like_params
    params.require(:user_like).permit(:status)
  end
end
