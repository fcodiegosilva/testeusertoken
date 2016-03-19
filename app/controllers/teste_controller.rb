class TesteController < ApplicationController
	require "http"
	require "date"
	require 'rufus-scheduler'
  def index
  	uri = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20in%20(%22PETR4.SA%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback="

  	@teste2 = JSON.parse(HTTP.get(uri))
  	@symbol = @teste2["query"]["results"]["quote"]["symbol"]
  	@price = @teste2["query"]["results"]["quote"]["LastTradePriceOnly"]
  	@count = 0
  	scheduler = Rufus::Scheduler.new
  	scheduler.every '5s' do
  		puts Time.now
	end
  	

  end
end
