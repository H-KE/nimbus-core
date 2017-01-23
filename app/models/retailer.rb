class Retailer < ApplicationRecord
  acts_as_commentable
  
  has_many :products
  has_many :orders
  has_many :admins

  def create_order_ticket(html)
    due_date = DateTime.now + 1
    conn = Faraday.new(:url => help_desk_api_url) do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end

    conn.basic_auth help_desk_auth, ''
    response = conn.post do |req|
      req.url '/api/v2/tickets'
      req.headers['Content-Type'] = 'application/json'
      req.body = '{
        "description":' + html + ',
        "subject":"A new order has been placed",
        "email":"han@nimbusfly.co",
        "priority":2,
        "status":2,
        "due_by":' + due_date.to_json + ',
        "fr_due_by":' + due_date.to_json + ',
        "cc_emails":["info.nimbusfly@gmail.com"]
      }'
    end
  end

  def persist_menu(menu)
    if clear_menu(menu["menu_updated"])
      menu["categories"].each do |category|
        valid_category = validate_category category["title"]
        category["items"].each do |item|
          products.create!({
            name: item["name"].titleize,
            images: [item["image_url"].nil? ? default_image_url(valid_category) : item["image_url"]],
            prices: item["prices"].delete_if{|_,v| v == 0}.values,
            price_labels: item["prices"].keys.map(& :titleize),
            description: item["body"],
            thc: 0,
            cbd: 0,
            category: valid_category
          })
        end
      end
    end
  end

  def uses_help_desk?
    help_desk_type != "NONE"
  end

  private

  def clear_menu(update_date)
    menu_update_date = update_date.to_datetime
    if menu_update_date
      products.where("created_at < ?", menu_update_date).destroy_all
      return true
    end
    return false
  end

  def validate_category category
    Product::VALID_CATEGORY_NAMES.include?(category) ? category : category.pluralize
  end



  def default_image_url category
    case category
    when "Indica"
      "https://s3.amazonaws.com/media.nimbusfly.co/default/indica.jpg"
    when "Sativa"
      "https://s3.amazonaws.com/media.nimbusfly.co/default/sativa.jpg"
    when "Hybrid"
      "https://s3.amazonaws.com/media.nimbusfly.co/default/hybrid.jpg"
    when "Pre-rolls"
      "https://s3.amazonaws.com/media.nimbusfly.co/default/prerolls.jpg"
    when "Prerolls"
      "https://s3.amazonaws.com/media.nimbusfly.co/default/prerolls.jpg"
    when "Concentrates"
      "https://s3.amazonaws.com/media.nimbusfly.co/default/shatter.png"
    when "Cannabis Oil (Tears)"
      "https://s3.amazonaws.com/media.nimbusfly.co/bailey/Co2_CBD_Syringe_40%25_Single_DSC_3864.jpg"
    when "Edibles"
      "https://s3.amazonaws.com/media.nimbusfly.co/default/edibles"
    when "Capsules"
      "https://s3.amazonaws.com/media.nimbusfly.co/bailey/Co2_CBD_10mg_CloseUp_DSC_3871.jpg"
    when "Extracts"
      "https://s3.amazonaws.com/media.nimbusfly.co/default/shatter.png"
    else
      "https://s3.amazonaws.com/media.nimbusfly.co/default/default.jpg"
    end
  end
end
