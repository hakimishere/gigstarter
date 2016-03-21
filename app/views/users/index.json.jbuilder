json.array!(@users) do |user|
  json.extract! user, :id, :username, :first_name, :last_name, :date_of_birth, :picture, :biography, :location
  json.url user_url(user, format: :json)
end
