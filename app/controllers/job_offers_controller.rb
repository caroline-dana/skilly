class JobOffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @job_offers = JobOffer.all
  end
end
