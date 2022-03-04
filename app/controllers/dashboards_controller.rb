class DashboardsController < ApplicationController

  def show
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date

    # For a monthly view:
    @meetings = Meeting.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)
    @matches = Match.where(user: current_user)
    @pending_matches = @matches.where(status: nil).where(callbooking: nil)
    @validating_matches = @matches.where(status: true).where(callbooking: nil)
    @accepted_matches = @matches.where(status: true).where.not(callbooking: nil)
  end
end
