class JobOffersController < ApplicationController

  def index
    @job_offers = JobOffer.all

    if params[:search].present?
      @job_offers = @job_offers.search(params.dig(:search, :city)) if params.dig(:search, :city).present?
      @job_offers = @job_offers.search(params.dig(:search, :contracttype)) if params.dig(:search, :contracttype).present?
      @job_offers = @job_offers.search(params.dig(:search, :job_title)) if params.dig(:search, :job_title).present?
    end
    @job_offers = @job_offers.sort
  end
end
