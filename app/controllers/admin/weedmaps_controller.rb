class Admin::WeedmapsController < ApplicationController
  def parse_menu
    @retailer = Retailer.find(params[:retailer_id])
    @response = weedmaps_menu params[:menu_path]
    @retailer.persist_menu @response
  end

  def weedmaps_menu(menu_path)
    conn = Faraday.new(:url => 'https://weedmaps.com') do |faraday|
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end

    response = conn.get do |req|
      req.url menu_path
    end

    JSON.parse(response.body)
  end

  def add_dispensary()
    # TODO: Use this to add retailers
    @retailer = Retailer.create!({
        image_url: 'https://s3.amazonaws.com/media.nimbusfly.co/default/default.jpg',
        name: 'Dispensary',
        address: 'Toronto, ON',
        bio: 'Comming soon',
        description: 'We are a 19+ ONLY recreational mobile dispensary we ship canada wide. We offer the best quality medicine at compassionate prices!',
        mail: true,
        delivery: false,
        pickup: false,
        shipping_fee: 0,
        email: "peter@nimbusfly.co",
        phone_number: "666-666-6666",
        medical: false
      })
  end

  def parse_menu_params
    params.permit(:menu_path, :retailer_id)
  end
end
