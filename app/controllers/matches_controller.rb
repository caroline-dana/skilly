class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    # if @match.save!
    #   redirect_to dashboard_path
    # else
    #   redirect_to job_offers_path
    # end
  end

  def update
    @match = Match.find(params[:id])
    @match.update(match_params)
    redirect_to dashboard_path
  end

  private

  def match_params
    params.require(:match).permit(:answer1, :answer2, :answer3)
  end
end
