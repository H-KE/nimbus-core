class Admin::WeedmapsController < ApplicationController
  def parse_menu
    @retailer = Retailer.find(params[:retailer_id])
    @response = weedmaps_menu params[:menu_path]
    Retailer.persist_menu @response
  end

  def weedmaps_menu(menu_path)
    conn = Faraday.new(:url => 'https://weedmaps.com') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end

    response = conn.get do |req|
      req.url menu_path
    end

    puts response
    response.body
  end

  def parse_menu_params
    params.permit(:menu_path, :retailer_id)
  end
end
