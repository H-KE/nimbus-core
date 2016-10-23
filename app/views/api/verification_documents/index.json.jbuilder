json.array! @documents do |document|
  json.type document.verification_type
  json.url document.verification_url
end
