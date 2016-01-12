class MoreHistoricalData < ActiveRecord::Migration
  def up
    puts "tournament positioning"
    [["Hyundai Tournament of Champions", 1], ["WGC- Bridgestone Championship", 34], ["The Barclays", 37], ["Deutsche Bank Championship", 38], ["BMW Championship", 39],
     ["Tour Championship", 40], ["Wyndham Championship", 36], ["Barbasol Championship", 29], ["RBC Canadian Open", 31], ["Quicken Loans Invitational", 32],
     ["Barracuda Championship", 33], ["Sony Open", 2], ["Humana Challenge", 3], ["Waste Management Phoenix Open", 4], ["Masters Tournament", 15],
     ["The Players Championship", 19], ["US Open", 25], ["British Open", 30], ["PGA Championship", 35], ["Farmers Insurance Open", 5], ["AT&T Pebble Beach Pro-Am", 6],
     ["Northern Trust Open", 7], ["Honda Classic", 8], ["Puerto Rico Open", 9], ["WGC - CA Championship", 10], ["Valspar Championship", 11], ["Arnold Palmer Invitational", 12],
     ["Valero Texas Open", 13], ["Shell Houston Open", 14], ["RBC Heritage", 16], ["Zurich Classic", 17], ["WGC-Cadillac Championship", 18], ["Wells Fargo Championship", 20],
     ["HP Byron Nelson Championship", 21], ["Crowne Plaza Invitational", 22], ["The Memorial Tournament", 23], ["FedEx St. Jude Classic", 24], ["Travelers Championship", 26],
     ["Greenbrier Classic", 27], ["John Deere Classic", 28]].each do |t|
       Tournament.find_by(:name => t[0]).update_attribute(:position, t[1])
     end
  end

  def down
  end
end
