json.array! @products do |product|
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
  json.stock product.stock
  json.reviews product.comments.all do |comment|
    json.title comment.title
    json.comment comment.comment
    json.rating comment.rating
    json.name comment.user.first_name
  end
end
