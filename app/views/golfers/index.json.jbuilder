json.array!(@golfers) do |golfer|
  json.extract! golfer, :id, :first_name, :last_name
  json.url golfer_url(golfer, format: :json)
end
