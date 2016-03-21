json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :description, :followers, :country_of_origin, :tier_1, :tier_2, :tier_3
  json.url artist_url(artist, format: :json)
end
