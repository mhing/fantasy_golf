class DashboardController < ApplicationController
  def index
    @picks = Pick.all
    @tournaments = Tournament.all.ordered
    @golfers = Golfer.all
    @historical_performances = HistoricalPerformance.segmented_by_year
  end
end
