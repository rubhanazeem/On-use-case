# frozen_string_literal: true

class V1::RetailersController < ApplicationController
  def index
    retailers = Retailer.search(name: params[:name]).paginate(page: params[:page] || 1)
    result = retailers.map do |r|
      { id: r.Id, name: r.Name, longitude: r.Dealer_Longitude__c, latitude: r.Dealer_Latitude__c }
    end
    render status: :ok, json: result
  end
end
