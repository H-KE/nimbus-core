json.array! @orders do |order|
  json.id order.id
  json.dispensary_name order.retailer.name
  json.dispensary_email order.retailer.email
  json.dispensary_image order.retailer.image_url
  json.address_id order.address_id
  json.total_price order.total_price
  json.status order.status
  json.status_detail order.status_detail
  json.delivery_fee order.delivery_fee
  json.tax_amount order.tax_amount
  json.carrier_code order.carrier_code
  json.tracking_number order.tracking_number
  json.created_at order.created_at
  json.order_details order.order_details.all do |item|
    json.name item.name
    json.price item.price
    json.quantity item.quantity
    json.images item.images
    json.thumbnail item.thumbnail
  end
end
