json.array! @documents do |document|
  json.id document.id
  json.type document.verification_type
  json.url document.verification_url
end
