class AddDefaultTournaments < ActiveRecord::Migration
  def up
    puts "Majors"
    ["Masters Tournament", "The Players Championship",
     "US Open", "British Open", "PGA Championship"].each do |name|
      Tournament.create(:name => name, :major => true, :fedex_playoff => false)
    end

    puts "FedEx"
    ["The Barclays", "Deutsche Bank Championship",
     "BMW Championship", "Tour Championship"].each do |name|
      Tournament.create(:name => name, :major => false, :fedex_playoff => true)
    end

    puts "Regular"
    ["Hyundai Tournament of Champions", "Sony Open", "Humana Challenge", 
     "Waste Management Phoenix Open", "Farmers Insurance Open", 
     "AT&T Pebble Beach Pro-Am", "Northern Trust Open", "Honda Classic", 
     "Puerto Rico Open", "WGC - CA Championship", "Valspar Championship", 
     "Arnold Palmer Invitational", "Valero Texas Open", "Shell Houston Open", 
     "RBC Heritage", "Zurich Classic", "WGC-Cadillac Championship", 
     "Wells Fargo Championship", "HP Byron Nelson Championship", 
     "Crowne Plaza Invitational", "The Memorial Tournament", "FedEx St. Jude Classic", 
     "Travelers Championship", "Greenbrier Classic", "John Deere Classic", 
     "Barbasol Championship", "RBC Canadian Open", "Quicken Loans Invitational", 
     "Barracuda Championship", "WGC- Bridgestone Championship", 
     "Wyndham Championship"].each do |name|
        Tournament.create(:name => name, :major => false, :fedex_playoff => false)
     end
  end

  def down
    execute "delete from tournaments;"
  end
end
