json.(@user, :email, :first_name, :last_name)

json.documents @documents do |document|
  json.id document.id
  json.type document.verification_type
  json.url document.verification_url
end

json.addresses @addresses do |address|
  json.address_id address.id
  json.primary address.primary
  json.secondary address.secondary
  json.locality address.city
  json.administrative_area_level_1 address.province
  json.postal_code address.postal_code
end
