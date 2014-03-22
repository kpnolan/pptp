json.array!(@precincts) do |precinct|
  json.extract! precinct, :id, :name
  json.url precinct_url(precinct, format: :json)
end
