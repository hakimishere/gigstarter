json.array!(@events) do |event|
  json.extract! event, :id, :concert_name, :duration, :artist_id, :location_id
  json.url event_url(event, format: :json)
end
