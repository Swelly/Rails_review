class Stock
  def Stock.quote(symbol)
    quote = YahooFinance::get_standard_quotes(symbol)
    quote[symbol]
  end
end
