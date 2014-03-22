json.array!(@police) do |police|
  json.extract! police, :id, :first_name, :last_name, :svcid_badge, :year_verified, :title_id, :department_id, :precinct_id
  json.url police_url(police, format: :json)
end
