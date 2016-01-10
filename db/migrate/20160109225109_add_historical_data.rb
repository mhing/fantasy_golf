class AddHistoricalData < ActiveRecord::Migration
  def up
    puts "2014"
    date = Date.new(2014, 9, 17)
    OverallWinnerPerformance.create(:winnings => 10230193, :place => 1, :date => date)
    OverallWinnerPerformance.create(:winnings => 8847500, :place => 2, :date => date)
    OverallWinnerPerformance.create(:winnings => 7798692, :place => 3, :date => date)
    OverallWinnerPerformance.create(:winnings => 7617113, :place => 4, :date => date)
    MajorWinnerPerformance.create(:winnings => 2651627, :place => 1, :date => date)
    FedExWinnerPerformance.create(:winnings => 1762920, :place => 1, :date => date)
    CutWinnerPerformance.create(:winnings => 32, :place => 1, :date => date)

    puts "2015"
    date = Date.new(2015, 9, 29)
    OverallWinnerPerformance.create(:winnings => 10689862, :place => 1, :date => date)
    OverallWinnerPerformance.create(:winnings => 9310880, :place => 2, :date => date)
    OverallWinnerPerformance.create(:winnings => 9302524, :place => 3, :date => date)
    OverallWinnerPerformance.create(:winnings => 9252032, :place => 4, :date => date)
    MajorWinnerPerformance.create(:winnings => 4707262, :place => 1, :date => date)
    FedExWinnerPerformance.create(:winnings => 1823525, :place => 1, :date => date)
    CutWinnerPerformance.create(:winnings => 35, :place => 1, :date => date)
  end

  def down
    execute 'delete from historical_performances;'
  end
end
