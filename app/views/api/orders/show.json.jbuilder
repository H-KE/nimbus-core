json.(@order, :id, :status, :address, :delivery_fee)
json.order_details @order.order_details.all do |item|
  json.name item.name
  json.price item.price
  json.quantity item.quantity
  json.images item.product.images
end
