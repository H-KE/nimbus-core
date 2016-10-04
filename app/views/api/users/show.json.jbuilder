json.(@user, :email, :first_name, :last_name, :address)

json.cards @cards do |card|
  json.brand card.brand
  json.last4 card.last4
end
