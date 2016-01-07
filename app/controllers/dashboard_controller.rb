class DashboardController < ApplicationController
  def index
    @picks = Pick.all
    @tournaments = Tournament.all
    @golfers = Golfer.all
  end
end
