class OverallWinnerPerformance < HistoricalPerformance
  def title
    "#{place.ordinalize} Place"
  end
end
