class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
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
