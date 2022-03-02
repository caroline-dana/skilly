class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    if @match.save!
      redirect_to dashboard_path
    else
      redirect_to job_offers_path
    end
  end
end
