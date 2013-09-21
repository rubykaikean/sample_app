json.array!(@users) do |user|
  json.extract! user, :name, :age, :address, :mobile_phone
  json.url user_url(user, format: :json)
end