json.(@user, :email, :first_name, :last_name, :address)

json.documents @documents do |document|
  json.type document.verification_type
  json.url document.verification_url
end
