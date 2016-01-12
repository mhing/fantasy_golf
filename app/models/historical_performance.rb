class HistoricalPerformance < ActiveRecord::Base
  TYPE_ORDER_MAP = {"OverallWinnerPerformance" => 1, "MajorWinnerPerformance" => 2, "FedExWinnerPerformance" => 3, "CutWinnerPerformance" => 4}

  def order_val
    TYPE_ORDER_MAP[type]
  end

  def self.ordered
    all.sort_by(&:order_val)
  end

  def year
    date.year
  end

  def self.segmented_by_year
    perfs = all
    years = perfs.collect(&:year).uniq.sort
    segments = {}
    years.each do |y|
      segments[y.to_s] = []
      segments[y.to_s] << perfs.select{|p| p.year == y}
    end

    segments
  end

end
