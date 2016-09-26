json.array! @retailers do |retailer|
  json.id retailer.id
  json.name retailer.name
  json.address retailer.address
  json.description retailer.description
  json.avatar_url retailer.image_url
end
