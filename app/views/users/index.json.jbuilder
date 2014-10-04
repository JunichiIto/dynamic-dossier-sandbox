json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :birthday, :annual_income
  json.url user_url(user, format: :json)
end
