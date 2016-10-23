json.(@user, :email, :first_name, :last_name, :address)

json.documents @documents do |document|
  json.type document.verification_type
  json.url document.verification_url
end

json.cards @cards do |card|
  json.brand card.brand
  json.last4 card.last4
end
