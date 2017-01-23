json.id @product.id
json.name @product.name
json.price @product.price
json.description @product.price
json.reviews @product.comments.all do |comment|
  json.title comment.title
  json.comment comment.comment
  json.rating comment.rating
  json.name comment.user.first_name
end
