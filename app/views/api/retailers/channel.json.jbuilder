json.array! @retailers do |retailer|
  json.id retailer.id
  json.name retailer.name
  json.address retailer.address
  json.bio retailer.bio
  json.description retailer.description
  json.avatar_url retailer.image_url
  json.shipping_fee retailer.shipping_fee
  json.free_shipping_cap retailer.free_shipping_cap
  json.medical retailer.medical
  json.products retailer.products do |product|
    json.id product.id
    json.retailer_id product.retailer_id
    json.name product.name
    json.images product.images
    json.thumbnail product.thumbnail
    json.prices product.prices
    json.price_labels product.price_labels
    json.description product.description
    json.thc product.thc
    json.cbd product.cbd
    json.subspecies product.subspecies
    json.category product.category
  end
end
