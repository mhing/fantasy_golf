json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :name, :major, :fedex_playoff
  json.url tournament_url(tournament, format: :json)
end
