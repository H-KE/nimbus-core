json.array! @products do |product|
  json.id product.id
  json.retailer_id product.retailer_id
  json.name product.name
  json.images product.images
  json.prices product.prices
  json.price_labels product.price_labels
  json.description product.description
  json.thc product.thc
  json.cbd product.cbd
  json.subspecies product.subspecies
  json.category product.category
end
