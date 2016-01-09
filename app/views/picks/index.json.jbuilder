json.array!(@picks) do |pick|
  json.extract! pick, :id, :golfer_id, :tournament_id, :winnings
  json.url pick_url(pick, format: :json)
end
