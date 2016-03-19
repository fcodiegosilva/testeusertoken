module TesteHelper
	def get_hash_for_stocks(stocks)
		uri = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20in%20("
		uri2 = ")&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback="
		stocks.each do |stock|
			uri << "%22#{stock}%22"
		end
		uri << uri2
	end
end
