json.array!(@bids) do |bid|
  json.extract! bid, :id, :tier_chosen, :amount, :artist_id
  json.url bid_url(bid, format: :json)
end
